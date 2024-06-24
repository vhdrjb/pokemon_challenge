class PageWrapper<D> {
  final bool lastPage;
  final Iterable<D> content;

  const PageWrapper({required this.lastPage, required this.content});
}
