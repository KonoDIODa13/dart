import 'package:logger/logger.dart';

void main() {
  var logger = Logger();

  logger.t("Trace log");

  logger.d("Debug log");

  logger.i("Info log");

  logger.w("Warning log");

  logger.e("Error log", error: 'Test Error');

  logger.f("What a fatal log",
      error: "Error Fatal",
      stackTrace: StackTrace.fromString("./bin/logger/ejer9_logger.dart"));
}

