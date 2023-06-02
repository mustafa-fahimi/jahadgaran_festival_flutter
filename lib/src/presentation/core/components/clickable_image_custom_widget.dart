import 'package:flutter/material.dart';
import 'package:universal_html/html.dart';

class ClickableImageCustomWidget extends StatelessWidget {
  const ClickableImageCustomWidget({
    required this.imagePath, Key? key,
    this.height = 300,
  }) : super(key: key);

  final String imagePath;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => window.open(imagePath, 'Image'),
        child: Image.asset(
          imagePath,
          height: height,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
