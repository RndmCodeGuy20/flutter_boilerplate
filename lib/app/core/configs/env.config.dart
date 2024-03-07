// get all env variables

import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> initEnv() async {
  await dotenv.load(fileName: '.env');
}

String getEnv(String key) {
  return dotenv.env[key] ?? '';
}
