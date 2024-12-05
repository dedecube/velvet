import 'package:flutter/material.dart';

class KernelLoadingWidget extends StatelessWidget {
  const KernelLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.white,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
