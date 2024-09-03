import 'package:velvet_support/velvet_support.dart';

typedef StackTraceParsedLine = ({
  String? functionName,
  String? fileName,
  String? fileUri,
  String? lineNumber,
});

class StackTraceParser {
  StackTraceParser(this.stackTrace);

  final StackTrace stackTrace;

  List<StackTraceParsedLine> parse() {
    final stackLines = stackTrace.toString().split('\n');
    final parsedLines = <StackTraceParsedLine>[];

    for (var line in stackLines) {
      if (line.contains('package:') || line.contains('main.dart')) {
        final match = RegExp(r'^(.*) \((.*?):(\d+):\d+\)').firstMatch(line);

        if (match != null) {
          final functionName = match
              .group(1)
              ?.trim()
              .afterLast(' ')
              .trim()
              .replaceAll('<anonymous closure>', '<fn>');
          final fileUri = match.group(2);
          final lineNumber = match.group(3);

          parsedLines.add(
            (
              functionName: functionName,
              fileUri: fileUri,
              fileName: fileUri?.afterLast('/'),
              lineNumber: lineNumber,
            ),
          );
        }
      }
    }

    return parsedLines;
  }
}
