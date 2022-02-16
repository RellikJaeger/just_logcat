import 'package:flutter_test/flutter_test.dart';
import 'package:just_logcat/just_logcat.dart';

void main() {
  const tag = 'just_logcat_test.dart: void main() {...}';

  test('Log.i', () {
    Log.i(tag, 'Info: \$message');
  });

  test('Log.d', () {
    Log.d(tag, 'Result: \$message');
  });

  test('Log.w', () {
    StackTrace stackTrace = StackTrace.current;
    Log.w(tag, 'Warning: \$message', stackTrace: stackTrace);
  });

  test('Log.e', () {
    StackTrace stackTrace = StackTrace.current;
    Log.e(tag, 'Error: \$message', stackTrace: stackTrace);
  });
}
