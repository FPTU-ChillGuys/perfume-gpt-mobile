// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_order_list_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PagedResultOfOrderListItem extends PagedResultOfOrderListItem {
  @override
  final BuiltList<OrderListItem> items;
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

  factory _$PagedResultOfOrderListItem([
    void Function(PagedResultOfOrderListItemBuilder)? updates,
  ]) => (PagedResultOfOrderListItemBuilder()..update(updates))._build();

  _$PagedResultOfOrderListItem._({
    required this.items,
    required this.pageNumber,
    required this.pageSize,
    required this.totalCount,
    this.totalPages,
    this.hasPreviousPage,
    this.hasNextPage,
  }) : super._();
  @override
  PagedResultOfOrderListItem rebuild(
    void Function(PagedResultOfOrderListItemBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PagedResultOfOrderListItemBuilder toBuilder() =>
      PagedResultOfOrderListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PagedResultOfOrderListItem &&
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
    return (newBuiltValueToStringHelper(r'PagedResultOfOrderListItem')
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

class PagedResultOfOrderListItemBuilder
    implements
        Builder<PagedResultOfOrderListItem, PagedResultOfOrderListItemBuilder> {
  _$PagedResultOfOrderListItem? _$v;

  ListBuilder<OrderListItem>? _items;
  ListBuilder<OrderListItem> get items =>
      _$this._items ??= ListBuilder<OrderListItem>();
  set items(ListBuilder<OrderListItem>? items) => _$this._items = items;

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

  PagedResultOfOrderListItemBuilder() {
    PagedResultOfOrderListItem._defaults(this);
  }

  PagedResultOfOrderListItemBuilder get _$this {
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
  void replace(PagedResultOfOrderListItem other) {
    _$v = other as _$PagedResultOfOrderListItem;
  }

  @override
  void update(void Function(PagedResultOfOrderListItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PagedResultOfOrderListItem build() => _build();

  _$PagedResultOfOrderListItem _build() {
    _$PagedResultOfOrderListItem _$result;
    try {
      _$result =
          _$v ??
          _$PagedResultOfOrderListItem._(
            items: items.build(),
            pageNumber: BuiltValueNullFieldError.checkNotNull(
              pageNumber,
              r'PagedResultOfOrderListItem',
              'pageNumber',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'PagedResultOfOrderListItem',
              'pageSize',
            ),
            totalCount: BuiltValueNullFieldError.checkNotNull(
              totalCount,
              r'PagedResultOfOrderListItem',
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
          r'PagedResultOfOrderListItem',
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
