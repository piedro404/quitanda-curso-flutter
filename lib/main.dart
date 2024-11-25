import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quitanda/src/pages/auth/controller/auth_controller.dart';
import 'package:quitanda/src/pages/splash/splash_screen.dart';
import 'package:quitanda/src/pages_routes/app_pages.dart';

void main() {
  Get.put(AuthController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Greengrocer',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white.withAlpha(190),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            backgroundColor: Colors.green,
            textStyle: const TextStyle(
              fontSize: 18,
            ),
            foregroundColor: Colors.white,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(
              color: Colors.green,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            foregroundColor: Colors.green,
            textStyle: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: PagesRoutes.splashRoute,
    );
  }
}
