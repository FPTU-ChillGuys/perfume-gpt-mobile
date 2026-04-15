import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/price_formatter.dart';
import '../../../../domain/entities/product.dart';
import '../providers/product_provider.dart';

// ---------------------------------------------------------------------------
// Constants
// ---------------------------------------------------------------------------

const _pageSizeOptions = [12, 24, 36];
const _priceMin = 0.0;
const _priceMax = 20000000.0;
const _volumeOptions = [5, 10, 30, 50, 75, 100, 125, 150, 200];

const _categoryLabels = <String, String>{
  'for women': 'Nước hoa cho Nữ',
  'for men': 'Nước hoa cho Nam',
  'unisex': 'Nước hoa Unisex',
  'niche & artisan': 'Niche và Artisan',
  'gift sets': 'Gift Sets',
};

const _sourceLabels = <String, String>{
  'bestsellers': 'Bestsellers',
  'new-arrivals': 'New Arrivals',
  'trending': 'Trending',
};

enum _SortValue {
  featured('Nổi bật'),
  newest('Mới nhất'),
  oldest('Cũ nhất'),
  priceAsc('Giá tăng dần'),
  priceDesc('Giá giảm dần'),
  nameAsc('Tên A → Z'),
  nameDesc('Tên Z → A');

  const _SortValue(this.label);
  final String label;
}

String _categoryLabel(String? name) {
  if (name == null || name.isEmpty) return 'Danh mục';
  return _categoryLabels[name.trim().toLowerCase()] ?? name;
}

String _formatVnd(double value) =>
    '${NumberFormat('#,###', 'vi_VN').format(value.toInt())} đ';

// ---------------------------------------------------------------------------
// Page
// ---------------------------------------------------------------------------

class ProductListPage extends ConsumerStatefulWidget {
  final String? source;
  final String? sourceLabel;
  final String? searchQuery;
  final int? categoryId;
  final String? categoryName;

  const ProductListPage({
    super.key,
    this.source,
    this.sourceLabel,
    this.searchQuery,
    this.categoryId,
    this.categoryName,
  });

  @override
  ConsumerState<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends ConsumerState<ProductListPage> {
  // -- Data ----------------------------------------------------------------
  List<Product> _displayedProducts = [];
  List<Product> _allSourceProducts = []; // client-side modes
  bool _isLoading = true;
  String? _error;

  // -- Pagination ----------------------------------------------------------
  int _page = 1;
  int _pageSize = 12;
  int _totalPages = 0;
  int _totalCount = 0;

  // -- Search --------------------------------------------------------------
  final _searchCtrl = TextEditingController();
  String _activeSearch = '';

  // -- Filters -------------------------------------------------------------
  _SortValue _sort = _SortValue.featured;
  int? _brandId;
  RangeValues _priceRange = const RangeValues(_priceMin, _priceMax);
  int? _volume;

  // -- Brand lookup --------------------------------------------------------
  List<BrandLookupItem> _brands = [];

  bool get _isSourceMode => widget.source != null;

  // ========================================================================
  // Lifecycle
  // ========================================================================

  @override
  void initState() {
    super.initState();
    _activeSearch = widget.searchQuery ?? '';
    _searchCtrl.text = _activeSearch;
    _fetchBrands();
    _fetchProducts();
  }

  @override
  void dispose() {
    _searchCtrl.dispose();
    super.dispose();
  }

  // ========================================================================
  // Data fetching
  // ========================================================================

  Future<void> _fetchBrands() async {
    try {
      final api = ref.read(apiClientProvider).getBrandsApi();
      final res = await api.apiBrandsLookupGet();
      if (!mounted) return;
      setState(() {
        _brands = (res.data?.payload ?? [])
            .where((b) => b.id != null)
            .toList()
          ..sort((a, b) => a.name.compareTo(b.name));
      });
    } catch (_) {}
  }

  Future<void> _fetchProducts() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final repo = ref.read(productRepositoryProvider);

      // --- Source mode (bestsellers / new-arrivals): client-side -----------
      if (_isSourceMode) {
        List<Product> all;
        if (widget.source == 'bestsellers') {
          all = await repo.getBestSellers();
        } else if (widget.source == 'new-arrivals') {
          all = await repo.getNewArrivals();
        } else {
          all = [];
        }
        if (!mounted) return;
        _allSourceProducts = all;
        _applyClientSideFilters();
        return;
      }

      // --- Standard / category listing: server-side -----------------------
      if (_activeSearch.isNotEmpty) {
        final result = await repo.searchProductsPaged(
          query: _activeSearch,
          pageNumber: _page,
          pageSize: _pageSize,
        );
        if (!mounted) return;
        setState(() {
          _displayedProducts = result.items;
          _totalCount = result.totalCount;
          _totalPages = result.totalPages;
          _isLoading = false;
        });
        return;
      }

      final result = await repo.getProductsPaged(
        pageNumber: _page,
        pageSize: _pageSize,
        brandId: _brandId,
        categoryId: widget.categoryId,
        volume: _volume,
        fromPrice: _priceRange.start > _priceMin ? _priceRange.start : null,
        toPrice: _priceRange.end < _priceMax ? _priceRange.end : null,
        sortBy: _sortBy,
        isDescending: _isDescending,
      );
      if (!mounted) return;
      setState(() {
        _displayedProducts = result.items;
        _totalCount = result.totalCount;
        _totalPages = result.totalPages;
        _isLoading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _error = 'Không thể tải danh sách sản phẩm. Vui lòng thử lại.';
        _isLoading = false;
      });
    }
  }

  void _applyClientSideFilters() {
    final search = _searchCtrl.text.trim().toLowerCase();
    var list = List<Product>.from(_allSourceProducts);

    // Filter
    list = list.where((p) {
      if (search.isNotEmpty &&
          !p.name.toLowerCase().contains(search) &&
          !p.brand.toLowerCase().contains(search)) {
        return false;
      }
      if (_brandId != null && p.brandId != _brandId) return false;
      if (_priceRange.start > _priceMin || _priceRange.end < _priceMax) {
        final prices = p.variantPrices ?? [];
        if (prices.isNotEmpty) {
          final maxP = prices.reduce((a, b) => a > b ? a : b);
          final minP = prices.reduce((a, b) => a < b ? a : b);
          if (maxP < _priceRange.start || minP > _priceRange.end) {
            return false;
          }
        }
      }
      return true;
    }).toList();

    // Sort
    switch (_sort) {
      case _SortValue.featured:
      case _SortValue.newest:
        break;
      case _SortValue.oldest:
        list = list.reversed.toList();
      case _SortValue.priceAsc:
        list.sort((a, b) => a.price.compareTo(b.price));
      case _SortValue.priceDesc:
        list.sort((a, b) => b.price.compareTo(a.price));
      case _SortValue.nameAsc:
        list.sort((a, b) => a.name.compareTo(b.name));
      case _SortValue.nameDesc:
        list.sort((a, b) => b.name.compareTo(a.name));
    }

    // Paginate
    final total = list.length;
    final start = (_page - 1) * _pageSize;
    final end = (start + _pageSize).clamp(0, total);
    setState(() {
      _displayedProducts = start < total ? list.sublist(start, end) : [];
      _totalCount = total;
      _totalPages = (total / _pageSize).ceil();
      _isLoading = false;
    });
  }

  // ========================================================================
  // Sort helpers
  // ========================================================================

  String? get _sortBy => switch (_sort) {
        _SortValue.featured => null,
        _SortValue.newest || _SortValue.oldest => 'CreatedAt',
        _SortValue.priceAsc || _SortValue.priceDesc => 'Price',
        _SortValue.nameAsc || _SortValue.nameDesc => 'Name',
      };

  bool? get _isDescending => switch (_sort) {
        _SortValue.featured => null,
        _SortValue.newest => true,
        _SortValue.oldest => false,
        _SortValue.priceAsc || _SortValue.nameAsc => false,
        _SortValue.priceDesc || _SortValue.nameDesc => true,
      };

  // ========================================================================
  // Event handlers
  // ========================================================================

  void _onFilterChanged() {
    _page = 1;
    if (_isSourceMode) {
      _applyClientSideFilters();
    } else {
      _fetchProducts();
    }
  }

  void _onPageChange(int newPage) {
    setState(() => _page = newPage);
    if (_isSourceMode) {
      _applyClientSideFilters();
    } else {
      _fetchProducts();
    }
  }

  void _onSearch() {
    final text = _searchCtrl.text.trim();
    if (_isSourceMode) {
      _page = 1;
      _applyClientSideFilters();
    } else {
      setState(() {
        _activeSearch = text;
        _page = 1;
      });
      _fetchProducts();
    }
  }

  // ========================================================================
  // Build
  // ========================================================================

  @override
  Widget build(BuildContext context) {
    final title = _isSourceMode
        ? 'Danh sách nước hoa — ${widget.sourceLabel ?? _sourceLabels[widget.source] ?? ''}'
        : widget.categoryName != null
            ? 'Danh sách nước hoa — ${_categoryLabel(widget.categoryName)}'
            : 'Danh sách nước hoa';

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _fetchProducts,
        child: CustomScrollView(
          slivers: [
            // Hero
            SliverToBoxAdapter(child: _buildHero(title)),
            // Toolbar (search + sort + info)
            SliverToBoxAdapter(child: _buildToolbar()),
            // Active filter chips
            if (_hasActiveFilters)
              SliverToBoxAdapter(child: _buildActiveFilterChips()),
            // Content
            if (_isLoading)
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: _buildSkeletonGrid(),
              )
            else if (_error != null)
              SliverToBoxAdapter(child: _buildError())
            else if (_displayedProducts.isEmpty)
              SliverToBoxAdapter(child: _buildEmpty())
            else
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: _buildProductGrid(),
              ),
            // Pagination
            SliverToBoxAdapter(child: _buildPagination()),
            const SliverToBoxAdapter(child: SizedBox(height: 32)),
          ],
        ),
      ),
    );
  }

  // ========================================================================
  // Hero section
  // ========================================================================

  Widget _buildHero(String title) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.heroStart, AppColors.heroEnd],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Navigation row
              Row(
                children: [
                  _circleButton(
                    Icons.arrow_back_ios_new,
                    () {
                      if (context.canPop()) {
                        context.pop();
                      } else {
                        context.go('/');
                      }
                    },
                  ),
                  const Spacer(),
                  _circleButton(Icons.tune, _showFilterSheet),
                ],
              ),
              const SizedBox(height: 12),
              // Subtitle
              Text(
                'CURATED CATALOG 2026',
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.45),
                  fontSize: 10,
                  letterSpacing: 3.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              // Title
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  height: 1.3,
                ),
              ),
              const SizedBox(height: 8),
              // Count
              Text(
                '${NumberFormat('#,###', 'vi_VN').format(_totalCount)} kết quả',
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.8),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              // Description
              Text(
                'Lọc theo thương hiệu, tìm kiếm nốt hương yêu thích và đặt giữ chỗ ngay trong cùng một trang.',
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.55),
                  fontSize: 13,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _circleButton(IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.08),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.white70, size: 18),
      ),
    );
  }

  // ========================================================================
  // Toolbar (search + sort + page size + info)
  // ========================================================================

  Widget _buildToolbar() {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      transform: Matrix4.translationValues(0, -20, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.borderLight),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
            child: TextField(
              controller: _searchCtrl,
              textInputAction: TextInputAction.search,
              onSubmitted: (_) => _onSearch(),
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(
                hintText: 'Tìm theo tên hoặc thương hiệu',
                hintStyle:
                    TextStyle(color: Colors.grey.shade400, fontSize: 14),
                prefixIcon: Icon(Icons.search,
                    color: Colors.grey.shade400, size: 20),
                suffixIcon: _searchCtrl.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear, size: 18),
                        onPressed: () {
                          _searchCtrl.clear();
                          setState(() => _activeSearch = '');
                          _page = 1;
                          if (_isSourceMode) {
                            _applyClientSideFilters();
                          } else {
                            _fetchProducts();
                          }
                        },
                      )
                    : null,
                filled: true,
                fillColor: AppColors.surface,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: AppColors.primary),
                ),
              ),
            ),
          ),
          // Category chip
          if (widget.categoryId != null)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: AppColors.primaryLight,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.primaryBorder),
                  ),
                  child: Text(
                    _categoryLabel(widget.categoryName),
                    style: const TextStyle(
                      color: AppColors.primaryDark,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          // Sort + page size
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: _pillDropdown<_SortValue>(
                    value: _sort,
                    items: _SortValue.values,
                    labelOf: (v) => v.label,
                    onChanged: (v) {
                      if (v == null) return;
                      setState(() => _sort = v);
                      _onFilterChanged();
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: _pillDropdown<int>(
                    value: _pageSize,
                    items: _pageSizeOptions,
                    labelOf: (v) => '$v sản phẩm',
                    onChanged: (v) {
                      if (v == null) return;
                      setState(() {
                        _pageSize = v;
                        _page = 1;
                      });
                      if (_isSourceMode) {
                        _applyClientSideFilters();
                      } else {
                        _fetchProducts();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          // Info text
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 14),
            child: Text(
              _totalCount > 0
                  ? 'Hiển thị ${(_page - 1) * _pageSize + 1} – '
                      '${((_page - 1) * _pageSize + _displayedProducts.length).clamp(0, _totalCount)} '
                      'trong tổng $_totalCount sản phẩm'
                  : 'Chưa có sản phẩm để hiển thị',
              style: TextStyle(color: Colors.grey.shade500, fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }

  Widget _pillDropdown<T>({
    required T value,
    required List<T> items,
    required String Function(T) labelOf,
    required ValueChanged<T?> onChanged,
  }) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(24),
        color: Colors.white,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          value: value,
          isExpanded: true,
          isDense: true,
          icon: const Icon(Icons.keyboard_arrow_down, size: 18),
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
          items: items
              .map((v) => DropdownMenuItem(value: v, child: Text(labelOf(v))))
              .toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }

  // ========================================================================
  // Active filter chips
  // ========================================================================

  bool get _hasActiveFilters =>
      _brandId != null ||
      _priceRange.start > _priceMin ||
      _priceRange.end < _priceMax ||
      _volume != null;

  Widget _buildActiveFilterChips() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          if (_brandId != null)
            _filterChip(
              _brands
                      .where((b) => b.id == _brandId)
                      .firstOrNull
                      ?.name ??
                  'Brand #$_brandId',
              () {
                setState(() => _brandId = null);
                _onFilterChanged();
              },
            ),
          if (_priceRange.start > _priceMin || _priceRange.end < _priceMax)
            _filterChip(
              '${_formatVnd(_priceRange.start)} – ${_formatVnd(_priceRange.end)}',
              () {
                setState(() =>
                    _priceRange = const RangeValues(_priceMin, _priceMax));
                _onFilterChanged();
              },
            ),
          if (_volume != null)
            _filterChip(
              '$_volume ml',
              () {
                setState(() => _volume = null);
                _onFilterChanged();
              },
            ),
        ],
      ),
    );
  }

  Widget _filterChip(String label, VoidCallback onRemove) {
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 4, top: 6, bottom: 6),
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.primaryBorder),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: AppColors.primaryDark,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 2),
          GestureDetector(
            onTap: onRemove,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: AppColors.primaryBorder,
                borderRadius: BorderRadius.circular(10),
              ),
              child:
                  const Icon(Icons.close, size: 12, color: AppColors.primaryDark),
            ),
          ),
        ],
      ),
    );
  }

  // ========================================================================
  // Skeleton loading
  // ========================================================================

  SliverGrid _buildSkeletonGrid() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _gridCrossAxisCount,
        childAspectRatio: 0.62,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      delegate: SliverChildBuilderDelegate(
        (_, _) => _SkeletonCard(),
        childCount: _pageSize,
      ),
    );
  }

  int get _gridCrossAxisCount {
    final width = MediaQuery.of(context).size.width;
    if (width >= 900) return 4;
    if (width >= 600) return 3;
    return 2;
  }

  // ========================================================================
  // Error / empty
  // ========================================================================

  Widget _buildError() {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          const Icon(Icons.error_outline, size: 48, color: Colors.redAccent),
          const SizedBox(height: 16),
          Text(
            _error!,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.redAccent, fontSize: 14),
          ),
          const SizedBox(height: 16),
          FilledButton.icon(
            onPressed: _fetchProducts,
            icon: const Icon(Icons.refresh, size: 18),
            label: const Text('Thử lại'),
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmpty() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(24),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const Icon(Icons.search_off_rounded,
              size: 48, color: AppColors.border),
          const SizedBox(height: 16),
          Text(
            'Không tìm thấy sản phẩm phù hợp',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Thử điều chỉnh từ khóa tìm kiếm hoặc thay đổi bộ lọc.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
          ),
        ],
      ),
    );
  }

  // ========================================================================
  // Product grid
  // ========================================================================

  SliverGrid _buildProductGrid() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _gridCrossAxisCount,
        childAspectRatio: 0.62,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) => _ProductCard(
          product: _displayedProducts[index],
          isNew: widget.source == 'new-arrivals',
        ),
        childCount: _displayedProducts.length,
      ),
    );
  }

  // ========================================================================
  // Pagination
  // ========================================================================

  Widget _buildPagination() {
    if (_totalPages <= 0 && !_isLoading) return const SizedBox.shrink();

    final canPrev = _page > 1;
    final canNext = _totalPages > 0
        ? _page < _totalPages
        : _displayedProducts.length == _pageSize;

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 20, 16, 0),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.95),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.borderLight),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Page info
          if (_isLoading)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 14,
                  height: 14,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.grey.shade400,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  'Đang tải trang $_page',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          else
            Text(
              _totalPages > 0
                  ? 'Trang $_page / $_totalPages'
                  : 'Trang $_page',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          // Buttons
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _pageBtn('Trước', canPrev, () => _onPageChange(_page - 1)),
              const SizedBox(width: 8),
              _pageBtn('Tiếp', canNext, () => _onPageChange(_page + 1)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _pageBtn(String label, bool enabled, VoidCallback onPressed) {
    return OutlinedButton(
      onPressed: enabled ? onPressed : null,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        side: BorderSide(
          color: enabled ? AppColors.border : AppColors.borderLight,
        ),
        foregroundColor: AppColors.textPrimary,
        textStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
      ),
      child: Text(label),
    );
  }

  // ========================================================================
  // Filter bottom sheet
  // ========================================================================

  void _showFilterSheet() {
    int? tempBrand = _brandId;
    RangeValues tempPrice = _priceRange;
    int? tempVolume = _volume;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (ctx) {
        return StatefulBuilder(
          builder: (ctx, setSheet) {
            return Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Row(
                    children: [
                      const Icon(Icons.tune,
                          size: 16, color: AppColors.textSecondary),
                      const SizedBox(width: 8),
                      Text(
                        'BỘ LỌC',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2.5,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // Brand
                  const Text('Thương hiệu',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textPrimary)),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.border),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<int?>(
                        value: tempBrand,
                        isExpanded: true,
                        style: const TextStyle(
                            fontSize: 14, color: AppColors.textPrimary),
                        items: [
                          const DropdownMenuItem(
                              value: null,
                              child: Text('Tất cả thương hiệu')),
                          ..._brands.map((b) => DropdownMenuItem(
                                value: b.id,
                                child: Text(b.name.isNotEmpty
                                    ? b.name
                                    : 'Brand #${b.id}'),
                              )),
                        ],
                        onChanged: (v) => setSheet(() => tempBrand = v),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Price
                  const Text('Mức giá (đ)',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textPrimary)),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.border),
                    ),
                    child: Column(
                      children: [
                        RangeSlider(
                          values: tempPrice,
                          min: _priceMin,
                          max: _priceMax,
                          divisions:
                              ((_priceMax - _priceMin) / 100000).round(),
                          activeColor: AppColors.accent,
                          inactiveColor: AppColors.border,
                          labels: RangeLabels(
                            _formatVnd(tempPrice.start),
                            _formatVnd(tempPrice.end),
                          ),
                          onChanged: (v) =>
                              setSheet(() => tempPrice = v),
                        ),
                        Text(
                          '${_formatVnd(tempPrice.start)} – ${_formatVnd(tempPrice.end)}',
                          style: TextStyle(
                              fontSize: 13, color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Volume
                  const Text('Dung tích (ml)',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textPrimary)),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.border),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<int?>(
                        value: tempVolume,
                        isExpanded: true,
                        style: const TextStyle(
                            fontSize: 14, color: AppColors.textPrimary),
                        items: [
                          const DropdownMenuItem(
                              value: null,
                              child: Text('Tất cả dung tích')),
                          ..._volumeOptions.map((v) => DropdownMenuItem(
                                value: v,
                                child: Text('$v ml'),
                              )),
                        ],
                        onChanged: (v) => setSheet(() => tempVolume = v),
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  // Buttons
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            setSheet(() {
                              tempBrand = null;
                              tempPrice =
                                  const RangeValues(_priceMin, _priceMax);
                              tempVolume = null;
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            padding:
                                const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            side: const BorderSide(
                                color: AppColors.border),
                          ),
                          child: const Text('Đặt lại bộ lọc',
                              style: TextStyle(
                                  color: AppColors.textPrimary,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: FilledButton(
                          onPressed: () {
                            Navigator.pop(ctx);
                            setState(() {
                              _brandId = tempBrand;
                              _priceRange = tempPrice;
                              _volume = tempVolume;
                            });
                            _onFilterChanged();
                          },
                          style: FilledButton.styleFrom(
                            padding:
                                const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            backgroundColor: AppColors.primary,
                          ),
                          child: const Text('Áp dụng'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

// ===========================================================================
// Product card
// ===========================================================================

class _ProductCard extends StatelessWidget {
  final Product product;
  final bool isNew;

  const _ProductCard({required this.product, this.isNew = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push('/product/${product.id}'),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.borderLight),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(16)),
                    child: product.imageUrl.isNotEmpty
                          ? Image.network(
                              product.imageUrl,
                              fit: BoxFit.cover,
                              gaplessPlayback: true,
                              loadingBuilder: (_, child, progress) {
                                if (progress == null) return child;
                                return Container(
                                  color: AppColors.surface,
                                  child: const Center(
                                    child: SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: CircularProgressIndicator(
                                          strokeWidth: 2),
                                    ),
                                  ),
                                );
                              },
                              errorBuilder: (_, _, _) => _placeholder(),
                            )
                          : _placeholder(),
                  ),
                  // "New" badge
                  if (isNew)
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: AppColors.accent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          'Mới',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  // Gender badge
                  if (product.gender != null)
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          product.gender!,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            // Info
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Brand
                  Text(
                    product.brand,
                    style:
                        TextStyle(fontSize: 11, color: Colors.grey.shade500),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),
                  // Name
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: AppColors.textPrimary,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  // Price
                  Text(
                    _priceText(),
                    style: const TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _priceText() {
    if (product.minPrice != null &&
        product.maxPrice != null &&
        product.minPrice != product.maxPrice) {
      return PriceFormatter.formatRange(product.minPrice!, product.maxPrice!);
    }
    if (product.price > 0) return PriceFormatter.format(product.price);
    return 'Liên hệ';
  }

  Widget _placeholder() {
    return Container(
      color: AppColors.borderLight,
      child: const Center(
        child: Icon(Icons.image_not_supported_outlined,
            color: Colors.grey, size: 36),
      ),
    );
  }
}

// ===========================================================================
// Skeleton card
// ===========================================================================

class _SkeletonCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.borderLight),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.skeleton,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 14,
            decoration: BoxDecoration(
              color: AppColors.skeleton,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 14,
            width: 80,
            decoration: BoxDecoration(
              color: AppColors.skeleton,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 16,
            width: 60,
            decoration: BoxDecoration(
              color: AppColors.skeleton,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ],
      ),
    );
  }
}
