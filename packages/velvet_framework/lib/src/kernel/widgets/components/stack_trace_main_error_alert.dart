import 'package:flutter/material.dart';
import 'package:velvet_support/velvet_support.dart';

class StackTraceMainErrorAlert extends StatelessWidget {
  const StackTraceMainErrorAlert({
    super.key,
    required this.error,
  });

  final Object error;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.redAccent.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.error_outline,
                  color: Colors.redAccent,
                  size: 14,
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Text(
                    error.runtimeType.toString(),
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.redAccent,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            error.toString().after(':').trim(),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
              height: 1.75,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
