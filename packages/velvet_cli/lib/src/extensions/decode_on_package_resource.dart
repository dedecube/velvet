import 'dart:convert';

import 'package:velvet_cli/velvet_cli.dart';

extension Decode on PackedResource {
  String get decoded {
    final buffer = StringBuffer();

    for (final line in content.split('\n')) {
      if (line.trim().isNotEmpty) {
        try {
          final decodedBytes = base64.decode(line);
          final decodedString = String.fromCharCodes(decodedBytes);
          buffer.write(decodedString);
        } catch (e) {
          print('Error decoding line: $line\nError: $e');
        }
      }
    }

    return buffer.toString();
  }
}
