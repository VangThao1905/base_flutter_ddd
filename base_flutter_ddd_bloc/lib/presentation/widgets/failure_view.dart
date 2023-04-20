import 'package:base_flutter_ddd_bloc/presentation/route/app_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FailureView extends StatelessWidget {
  const FailureView({Key? key}) : super(key: key);

  static show(BuildContext context) {
    return Navigator.pushNamed(context, RouteName.failureView, arguments: null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const CloseButton(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Icons.error_outline,
              size: 100,
              color: Colors.red,
            ),
            Text("Error")
          ],
        ),
      ),
    );
  }
}
