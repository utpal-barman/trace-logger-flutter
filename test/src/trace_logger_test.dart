// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:trace_logger/trace_logger.dart';

void main() {
  group('TraceLogger', () {
    test('can be instantiated', () {
      expect(TraceLogger(), isNotNull);
    });
  });
}
