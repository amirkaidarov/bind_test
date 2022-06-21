import 'dart:io';

const String dir =
    'lib/features/account_data_display/data/datasources/fixtures/';

String fixture(String name) {
  return File('$dir$name').readAsStringSync();
}
