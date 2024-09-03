import 'package:flutter/material.dart';

class KernelLoadingWidget extends StatelessWidget {
  const KernelLoadingWidget({super.key});

  @override
  ColoredBox build(BuildContext context) {
    return const ColoredBox(
      color: Colors.white,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
