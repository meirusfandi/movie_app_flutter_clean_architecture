import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

extension ShimmerUtils on Widget {
  Widget loadShimmer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300] ?? Color(0XFFDADADA),
      highlightColor: Colors.grey[100] ?? Color(0xFFF7F7F7),
      child: this,
    );
  }
}