import 'package:flutter/material.dart';
import 'package:pageflow/modules/home/home_page.dart';
import 'package:pageflow/modules/login/login_page.dart';
import 'package:pageflow/modules/splash/splash_page.dart';
import 'package:pageflow/shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: const LoginPage(),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/home": (context) => const HomePage(),
        "/login": (context) => const LoginPage()
      },
    );
  }
}
