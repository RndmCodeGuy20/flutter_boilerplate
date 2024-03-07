import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boilerplate/app/app.dart';
import 'package:flutter_boilerplate/app/core/constants/colors.dart';
import 'package:flutter_boilerplate/app/core/helpers/logger.helper.dart';

import 'app/core/configs/env.config.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: ColorPalette.highlightColor1,
      systemNavigationBarColor: ColorPalette.highlightColor1,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  initEnv().then(
    (value) => LoggerHelper.logInfo('Environment initialized successfully'),
  );

  runApp(
    const MainApp(),
  );
}
