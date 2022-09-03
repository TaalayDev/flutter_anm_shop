import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AppSliverAnimatedList extends StatefulWidget {
  const AppSliverAnimatedList({
    Key? key,
    required this.count,
    required this.builder,
    this.controller,
    this.onBottomReached,
  }) : super(key: key);

  final int count;
  final Widget Function(BuildContext, int) builder;
  final ScrollController? controller;
  final Function()? onBottomReached;

  @override
  State<AppSliverAnimatedList> createState() => _AppSliverAnimatedListState();
}

class _AppSliverAnimatedListState extends State<AppSliverAnimatedList> {
  late final ScrollController scrollController;
  bool localController = true;

  @override
  void initState() {
    localController = widget.controller == null;
    scrollController = widget.controller ?? ScrollController();
    scrollController.addListener(_scrollListener);
    super.initState();
  }

  void _scrollListener() {
    if (scrollController.position.atEdge) {
      bool isTop = scrollController.position.pixels == 0;
      if (!isTop) {
        widget.onBottomReached?.call();
      }
    }
  }

  @override
  void dispose() {
    if (localController) {
      scrollController.removeListener(_scrollListener);
      scrollController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: widget.builder(context, index),
              ),
            ),
          ),
          childCount: widget.count,
        ),
      ),
    );
  }
}
