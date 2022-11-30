import 'package:logger/logger.dart';

// Use logger to debug, it will not show in release mode.
final Logger logger = Logger(
  printer: PrettyPrinter(),
);

final Logger log = Logger(
  printer: PrettyPrinter(
    printEmojis: false,
    methodCount: 0,
  ),
);
