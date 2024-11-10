# 🕵️ trace_logger: ^1.0.1

## Lightweight Flutter/Dart Logger with Class Traceability using the power of StackTrace 🔍

[![pub package](https://img.shields.io/pub/v/trace_logger.svg?logo=dart&logoColor=00b9fc)](https://pub.dartlang.org/packages/trace_logger)
[![Last Commits](https://img.shields.io/github/last-commit/utpal-barman/trace-logger-flutter?logo=git&logoColor=white)](https://github.com/utpal-barman/trace-logger-flutter/commits/main)
[![Pull Requests](https://img.shields.io/github/issues-pr/utpal-barman/trace-logger-flutter?logo=github&logoColor=white)](https://github.com/utpal-barman/trace-logger-flutter/pulls)
[![Code size](https://img.shields.io/github/languages/code-size/utpal-barman/trace-logger-flutter?logo=github&logoColor=white)](https://github.com/utpal-barman/trace-logger-flutter)
[![License](https://img.shields.io/github/license/utpal-barman/trace-logger-flutter?logo=open-source-initiative&logoColor=green)](https://github.com/utpal-barman/trace-logger-flutter/blob/main/LICENSE)

🔥 **TraceLogger** is a simple Flutter logging package that logs messages with class names and includes color-coded output for easier debugging and better readability. Use it to automatically capture the calling class context in your logs, along with level-specific emojis (🕵️ ℹ️ ⚠️ ❌) !

## Resources 📚

- [Documentation](https://pub.dev/documentation/trace_logger/latest/trace_logger/TraceLogger-class.html)
- [Pub Package](https://pub.dev/packages/trace_logger)
- [GitHub Repository](https://github.com/utpal-barman/trace-logger-flutter)

## Installation 💻

1. **Add** `trace_logger` to your `pubspec.yaml`:

   ```yaml
   dependencies:
     trace_logger: ^1.0.1
   ```

2. **Install** the package:

   ```sh
   flutter packages get
   ```

## Usage

To use `TraceLogger`, import the package and create an instance of `TraceLogger`:

```dart
import 'package:trace_logger/trace_logger.dart';

final logger = TraceLogger();
```

### Logging with Class Traceability

`TraceLogger` automatically captures the calling class name when logging messages. Here's an example:

```dart
class HomeScreen {
  void someMethod() {
    logger.d('Debugging information');
    logger.i('Informational message');
    logger.w('Warning message');
    logger.e('Error message');
  }
}
```

Output:

```txt
🕵️ [HomeScreen] Debugging information
ℹ️ [HomeScreen] Informational message
⚠️ [HomeScreen] Warning message
❌ [HomeScreen] Error message
```

### Log Levels and Emojis

| Level  | Emoji | Color   |
|--------|-------|---------|
| Debug  | 🕵️    | Cyan    |
| Info   | ℹ️    | Green   |
| Warning| ⚠️    | Yellow  |
| Error  | ❌    | Red     |

Each log level is represented by an emoji and a color for quick identification.

## API Reference

- **`logger.d(message)`** - Logs a debug message.
- **`logger.i(message)`** - Logs an informational message.
- **`logger.w(message)`** - Logs a warning message.
- **`logger.e(message)`** - Logs an error message.

## License 📝

This project is licensed under the BSD 3-Clause License - see the [LICENSE](https://github.com/utpal-barman/trace-logger-flutter/blob/main/LICENSE) file for details.
