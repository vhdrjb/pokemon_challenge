class PageWrapper<D> {
  final bool lastPage;
  final bool firstPage;
  final Iterable<D> content;
  const PageWrapper({required this.lastPage, required this.firstPage,required this.content});
}
