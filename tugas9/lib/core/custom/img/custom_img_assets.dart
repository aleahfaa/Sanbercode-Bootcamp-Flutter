import 'package:flutter/material.dart';

class CustomImgAssets extends StatelessWidget {
  const CustomImgAssets({
    super.key,
    this.height,
    this.width,
    required this.urlImg,
    this.child,
    this.padding,
  });
  final double? width;
  final double? height;
  final String urlImg;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.maxFinite,
      height: height ?? 40,
      padding: padding,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(urlImg)),
      ),
      child: child,
    );
  }
}
