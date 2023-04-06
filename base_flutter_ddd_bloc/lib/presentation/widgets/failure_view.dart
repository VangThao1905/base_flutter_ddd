import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FailureView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(
            Icons.error,
            size: 180,
          ),
          SizedBox(
            height: 16,
          ),
          Text("Oops")
        ],
      ),
    );
  }
}
