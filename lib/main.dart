import 'package:facebook/modules/home/facebook_home_screen.dart';
import 'package:facebook/modules/login/facebook_login_screen.dart';
import 'package:facebook/modules/splash/facebook_splash_screen.dart';
import 'package:flutter/material.dart';

// انا اللي قابلت حضرتك يوم السبت وقولتلك اني مخلص الاسايمنت قبل الديدلاين بس حضرتك كنت قافل التسليم 12 الظهر بدل 12 بليل
void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Facebook",
      initialRoute: FacebookSplashScreen.routeName,
      routes: {
        FacebookSplashScreen.routeName : (context) => const FacebookSplashScreen(),
        FacebookLoginScreen.routeName : (context) => const FacebookLoginScreen(),
        FacebookHomeScreen.routeName : (context) => const FacebookHomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}