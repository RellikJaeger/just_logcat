library just_logcat;

import 'dart:developer' as developer;

// TODO: Need to improve log levels.
class Log {
  static void i(String tag, String message, {StackTrace? stackTrace}) {
    developer.log('', name: 'Logcat');
    stackTrace != null
        ? developer.log(
            '$tag: \n\n$message\n\n---',
            name: 'Info',
            stackTrace: stackTrace,
          )
        : developer.log(
      '$tag: \n\n$message\n\n---',
            name: 'Info',
          );
  }

  static void d(String tag, String message, {StackTrace? stackTrace}) {
    developer.log('', name: 'Logcat');
    stackTrace != null
        ? developer.log(
      '$tag: \n\n$message\n\n---',
            name: 'Debug',
            stackTrace: stackTrace,
          )
        : developer.log(
      '$tag: \n\n$message\n\n---',
            name: 'Debug',
          );
  }

  static void w(String tag, String message, {StackTrace? stackTrace}) {
    developer.log('', name: 'Logcat');
    stackTrace != null
        ? developer.log(
      '$tag: ',
            name: 'Warning',
            error: '\n$message\n\n---',
            stackTrace: stackTrace,
          )
        : developer.log(
      '$tag: ',
            name: 'Warning',
            error: '\n$message\n\n---',
          );
  }

  static void e(String tag, String message, {StackTrace? stackTrace}) {
    developer.log('', name: 'Logcat');
    stackTrace != null
        ? developer.log(
      '$tag: ',
            name: 'Error',
            error: '\n$message\n\n---',
            stackTrace: stackTrace,
          )
        : developer.log(
      '$tag: ',
            name: 'Error',
            error: '\nWARNING: You\'re not providing stacktrace results!'
                '\n       : Error log is useless without stacktrace.'
                '\n       : Use Log.i, Log.d or Log.w instead!'
                '\n'
                '\nHow to get stacktrace?'
                '\n====================[EXAMPLE]===================='
                '\nstatic const tag = \'main.dart: class _HomeState\';'
                '\n...'
                '\ntry {'
                '\n\t...'
                '\n} catch (error, stackTrace) {'
                '\n\tLog.e(tag, \'\$error\', stackTrace: stackTrace);'
                '\n}'
                '\n================================================='
                '\n'
                '\n$message'
                '\n'
                '\n---',
          );
  }
}
