import 'package:flutter/cupertino.dart';

class HeaderPersistent extends SliverPersistentHeaderDelegate {
  Widget child;
  double max;
  double min;
  HeaderPersistent({this.child, this.max, this.min});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => max;

  @override
  double get minExtent => min;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}