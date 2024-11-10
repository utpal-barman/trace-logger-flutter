import 'dart:developer' as developer;

/// A logger utility that automatically logs the class name along with the log
/// message.
///
/// The `TraceLogger` class provides methods for different log levels:
/// debug, info, warning, and error. Each level is associated with unique colors
/// and emoji for quick visual identification.
///
/// Usage example:
/// ```dart
/// final logger = TraceLogger();
///
/// class HomeScreen {
///   void someMethod() {
///     logger.d('This is a debug log message');
///     logger.i('This is an info log message');
///     logger.w('This is a warning log message');
///     logger.e('This is an error log message');
///   }
/// }
/// ```
class TraceLogger {
  static const _reset = '\x1B[0m';
  static const _debugColor = '\x1B[36m'; // Cyan
  static const _infoColor = '\x1B[32m'; // Green
  static const _warnColor = '\x1B[33m'; // Yellow
  static const _errorColor = '\x1B[31m'; // Red

  /// Logs debug strings.
  void d(String message) {
    final className = _getClassName();
    _log('🕵️ $_debugColor[$className] $message$_reset');
  }

  /// Logs information strings.
  void i(String message) {
    final className = _getClassName();
    _log('ℹ️ $_infoColor[$className] $message$_reset');
  }

  /// Logs warning strings.
  void w(String message) {
    final className = _getClassName();
    _log('⚠️ $_warnColor[$className] $message$_reset');
  }

  /// Logs error strings.
  void e(String message) {
    final className = _getClassName();
    _log('🚫 $_errorColor[$className] $message$_reset');
  }

  void _log(String formattedMessage) {
    developer.log(formattedMessage);
  }

  String _getClassName() {
    final stackTrace = StackTrace.current;
    final traceString = stackTrace.toString().split('\n')[2];
    final regex = RegExp(r'#[0-9]+\s+([A-Za-z_]+)\.');
    final match = regex.firstMatch(traceString);
    return match != null ? match.group(1) ?? 'UnknownClass' : 'UnknownClass';
  }
}
