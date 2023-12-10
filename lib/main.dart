import 'package:device_preview/device_preview.dart';
import 'package:employees_organizer/constants/color.dart';
import 'package:employees_organizer/view/routes/routes.dart';
import 'package:employees_organizer/view/routes/routes_name.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        buttonTheme: const ButtonThemeData(
          buttonColor: primatyColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      initialRoute: RoutesName.home,
      getPages: Routes.pages,
    );
  }
}
