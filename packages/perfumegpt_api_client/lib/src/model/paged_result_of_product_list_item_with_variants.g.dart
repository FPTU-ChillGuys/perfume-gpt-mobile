// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_product_list_item_with_variants.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PagedResultOfProductListItemWithVariants
    extends PagedResultOfProductListItemWithVariants {
  @override
  final BuiltList<ProductListItemWithVariants> items;
  @override
  final int pageNumber;
  @override
  final int pageSize;
  @override
  final int totalCount;
  @override
  final int? totalPages;
  @override
  final bool? hasPreviousPage;
  @override
  final bool? hasNextPage;

  factory _$PagedResultOfProductListItemWithVariants([
    void Function(PagedResultOfProductListItemWithVariantsBuilder)? updates,
  ]) => (PagedResultOfProductListItemWithVariantsBuilder()..update(updates))
      ._build();

  _$PagedResultOfProductListItemWithVariants._({
    required this.items,
    required this.pageNumber,
    required this.pageSize,
    required this.totalCount,
    this.totalPages,
    this.hasPreviousPage,
    this.hasNextPage,
  }) : super._();
  @override
  PagedResultOfProductListItemWithVariants rebuild(
    void Function(PagedResultOfProductListItemWithVariantsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PagedResultOfProductListItemWithVariantsBuilder toBuilder() =>
      PagedResultOfProductListItemWithVariantsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PagedResultOfProductListItemWithVariants &&
        items == other.items &&
        pageNumber == other.pageNumber &&
        pageSize == other.pageSize &&
        totalCount == other.totalCount &&
        totalPages == other.totalPages &&
        hasPreviousPage == other.hasPreviousPage &&
        hasNextPage == other.hasNextPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, pageNumber.hashCode);
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, totalCount.hashCode);
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jc(_$hash, hasPreviousPage.hashCode);
    _$hash = $jc(_$hash, hasNextPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PagedResultOfProductListItemWithVariants',
          )
          ..add('items', items)
          ..add('pageNumber', pageNumber)
          ..add('pageSize', pageSize)
          ..add('totalCount', totalCount)
          ..add('totalPages', totalPages)
          ..add('hasPreviousPage', hasPreviousPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class PagedResultOfProductListItemWithVariantsBuilder
    implements
        Builder<
          PagedResultOfProductListItemWithVariants,
          PagedResultOfProductListItemWithVariantsBuilder
        > {
  _$PagedResultOfProductListItemWithVariants? _$v;

  ListBuilder<ProductListItemWithVariants>? _items;
  ListBuilder<ProductListItemWithVariants> get items =>
      _$this._items ??= ListBuilder<ProductListItemWithVariants>();
  set items(ListBuilder<ProductListItemWithVariants>? items) =>
      _$this._items = items;

  int? _pageNumber;
  int? get pageNumber => _$this._pageNumber;
  set pageNumber(int? pageNumber) => _$this._pageNumber = pageNumber;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  bool? _hasPreviousPage;
  bool? get hasPreviousPage => _$this._hasPreviousPage;
  set hasPreviousPage(bool? hasPreviousPage) =>
      _$this._hasPreviousPage = hasPreviousPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  PagedResultOfProductListItemWithVariantsBuilder() {
    PagedResultOfProductListItemWithVariants._defaults(this);
  }

  PagedResultOfProductListItemWithVariantsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _pageNumber = $v.pageNumber;
      _pageSize = $v.pageSize;
      _totalCount = $v.totalCount;
      _totalPages = $v.totalPages;
      _hasPreviousPage = $v.hasPreviousPage;
      _hasNextPage = $v.hasNextPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PagedResultOfProductListItemWithVariants other) {
    _$v = other as _$PagedResultOfProductListItemWithVariants;
  }

  @override
  void update(
    void Function(PagedResultOfProductListItemWithVariantsBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  PagedResultOfProductListItemWithVariants build() => _build();

  _$PagedResultOfProductListItemWithVariants _build() {
    _$PagedResultOfProductListItemWithVariants _$result;
    try {
      _$result =
          _$v ??
          _$PagedResultOfProductListItemWithVariants._(
            items: items.build(),
            pageNumber: BuiltValueNullFieldError.checkNotNull(
              pageNumber,
              r'PagedResultOfProductListItemWithVariants',
              'pageNumber',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'PagedResultOfProductListItemWithVariants',
              'pageSize',
            ),
            totalCount: BuiltValueNullFieldError.checkNotNull(
              totalCount,
              r'PagedResultOfProductListItemWithVariants',
              'totalCount',
            ),
            totalPages: totalPages,
            hasPreviousPage: hasPreviousPage,
            hasNextPage: hasNextPage,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PagedResultOfProductListItemWithVariants',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
