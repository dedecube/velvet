import 'package:flutter_test/flutter_test.dart';

import 'src/extensions/map/dot_notation_on_map_extension_test.dart'
    as dot_notation_on_map_extension_test;
import 'src/extensions/string/bounds_on_string_extension_test.dart'
    as bounds_on_string_extension_test;
import 'src/extensions/string/cases_on_string_extension_test.dart'
    as cases_on_string_extension_test;

void main() {
  // --------------------------------------------------------------------------
  // Map
  // --------------------------------------------------------------------------
  group(
    'dot_notation_on_map_extension_test',
    dot_notation_on_map_extension_test.main,
  );

  // --------------------------------------------------------------------------
  // String
  // --------------------------------------------------------------------------
  group(
    'bounds_on_string_extension_test',
    bounds_on_string_extension_test.main,
  );
  group('cases_on_string_extension_test', cases_on_string_extension_test.main);
}
