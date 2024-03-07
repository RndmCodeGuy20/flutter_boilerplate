import 'package:logger/logger.dart';

class LoggerHelper {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 50,
      colors: true,
      printEmojis: true,
      printTime: true,
    ),
  );

  static void logInfo(String message) {
    _logger.i(message);
  }

  static void logError(String message) {
    _logger.e(message);
  }

  static void logWarning(String message) {
    _logger.w(message);
  }

  static void logDebug(String message) {
    _logger.d(message);
  }

  static void logVerbose(String message) {
    _logger.v(message);
  }

  static void logWTF(String message) {
    _logger.wtf(message);
  }

  static void logFatal(String message) {
    _logger.wtf(message);
  }
}

LoggerHelper logger = LoggerHelper();
