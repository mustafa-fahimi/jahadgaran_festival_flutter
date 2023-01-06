import 'package:flutter/material.dart';

class DividerCW extends StatelessWidget {
  const DividerCW({
    super.key,
    this.verticalMargin = 30,
    this.horizontalMargin = 10,
  });

  final double verticalMargin;
  final double horizontalMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      margin: EdgeInsets.symmetric(
        vertical: verticalMargin,
        horizontal: horizontalMargin,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          stops: const [0.2, 0.5, 0.8],
          colors: [
            const Color.fromARGB(27, 97, 101, 104).withOpacity(0.1),
            const Color.fromARGB(58, 29, 33, 36),
            const Color.fromARGB(68, 97, 101, 104).withOpacity(0.1),
          ],
        ),
      ),
    );
  }
}
