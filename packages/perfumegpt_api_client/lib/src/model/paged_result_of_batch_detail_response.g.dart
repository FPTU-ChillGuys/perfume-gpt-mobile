// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_batch_detail_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PagedResultOfBatchDetailResponse
    extends PagedResultOfBatchDetailResponse {
  @override
  final BuiltList<BatchDetailResponse> items;
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

  factory _$PagedResultOfBatchDetailResponse([
    void Function(PagedResultOfBatchDetailResponseBuilder)? updates,
  ]) => (PagedResultOfBatchDetailResponseBuilder()..update(updates))._build();

  _$PagedResultOfBatchDetailResponse._({
    required this.items,
    required this.pageNumber,
    required this.pageSize,
    required this.totalCount,
    this.totalPages,
    this.hasPreviousPage,
    this.hasNextPage,
  }) : super._();
  @override
  PagedResultOfBatchDetailResponse rebuild(
    void Function(PagedResultOfBatchDetailResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PagedResultOfBatchDetailResponseBuilder toBuilder() =>
      PagedResultOfBatchDetailResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PagedResultOfBatchDetailResponse &&
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
    return (newBuiltValueToStringHelper(r'PagedResultOfBatchDetailResponse')
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

class PagedResultOfBatchDetailResponseBuilder
    implements
        Builder<
          PagedResultOfBatchDetailResponse,
          PagedResultOfBatchDetailResponseBuilder
        > {
  _$PagedResultOfBatchDetailResponse? _$v;

  ListBuilder<BatchDetailResponse>? _items;
  ListBuilder<BatchDetailResponse> get items =>
      _$this._items ??= ListBuilder<BatchDetailResponse>();
  set items(ListBuilder<BatchDetailResponse>? items) => _$this._items = items;

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

  PagedResultOfBatchDetailResponseBuilder() {
    PagedResultOfBatchDetailResponse._defaults(this);
  }

  PagedResultOfBatchDetailResponseBuilder get _$this {
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
  void replace(PagedResultOfBatchDetailResponse other) {
    _$v = other as _$PagedResultOfBatchDetailResponse;
  }

  @override
  void update(void Function(PagedResultOfBatchDetailResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PagedResultOfBatchDetailResponse build() => _build();

  _$PagedResultOfBatchDetailResponse _build() {
    _$PagedResultOfBatchDetailResponse _$result;
    try {
      _$result =
          _$v ??
          _$PagedResultOfBatchDetailResponse._(
            items: items.build(),
            pageNumber: BuiltValueNullFieldError.checkNotNull(
              pageNumber,
              r'PagedResultOfBatchDetailResponse',
              'pageNumber',
            ),
            pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize,
              r'PagedResultOfBatchDetailResponse',
              'pageSize',
            ),
            totalCount: BuiltValueNullFieldError.checkNotNull(
              totalCount,
              r'PagedResultOfBatchDetailResponse',
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
          r'PagedResultOfBatchDetailResponse',
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
