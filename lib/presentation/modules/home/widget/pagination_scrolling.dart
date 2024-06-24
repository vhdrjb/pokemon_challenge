import 'package:flutter/widgets.dart';

class PaginationScrolling {
  final ScrollController scrollController;
  final VoidCallback onLoad;
  double offsetRatio;
  int currentPage = 1;


  PaginationScrolling({
    required this.scrollController,
    required this.onLoad,
    this.offsetRatio = 0.5,
  }) {
    scrollController.addListener(_listener);
  }

  void _listener() {
    if (scrollController.offset >=
        scrollController.position.maxScrollExtent * offsetRatio) {
      offsetRatio = 1 - 1 / (currentPage * 2);
      onLoad.call();
    }
  }

  void dispose() {
    scrollController.removeListener(_listener);
    scrollController.dispose();
  }
}
