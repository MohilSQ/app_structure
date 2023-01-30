import 'dart:io';

import 'package:app_structure/res/constant/app_theme.dart';
import 'package:app_structure/res/constant/constant.dart';
import 'package:app_structure/utils/routes/routes.dart';
import 'package:app_structure/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightTheme,
      darkTheme: AppTheme().darkTheme,
      themeMode: ThemeMode.system,
      title: Global.appName,
      getPages: Routes.pages,
      initialRoute: RoutesName.splashScreen,
    );
  }
}
