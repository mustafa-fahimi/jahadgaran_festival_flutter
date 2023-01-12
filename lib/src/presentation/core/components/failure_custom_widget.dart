import 'package:flutter/material.dart';

class FailureCustomWidget extends StatelessWidget {
  const FailureCustomWidget({
    super.key,
    this.height = 130,
  });
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            'fetch_error',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
