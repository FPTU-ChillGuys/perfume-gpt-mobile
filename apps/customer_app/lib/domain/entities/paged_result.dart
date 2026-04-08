class PagedResult<T> {
  final List<T> items;
  final int totalCount;
  final int totalPages;
  final bool hasNextPage;

  const PagedResult({
    required this.items,
    required this.totalCount,
    required this.totalPages,
    required this.hasNextPage,
  });
}
