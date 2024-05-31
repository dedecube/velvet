import 'package:flutter/material.dart';

class KernelLoadingWidget extends StatelessWidget {
  const KernelLoadingWidget({super.key});

  @override
  MaterialApp build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
