import 'package:flutter/material.dart';

class NetworkImageLoader extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;

  const NetworkImageLoader({
    required this.imageUrl,
    this.width = 100.0,
    this.height = 100.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      width: width,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
