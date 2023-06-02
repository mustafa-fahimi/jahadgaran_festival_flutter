import 'package:flutter/material.dart';

class FailureCustomWidget extends StatelessWidget {
  const FailureCustomWidget({
    super.key,
    this.height = 130,
  });
  final double height;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'fetch_error',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
