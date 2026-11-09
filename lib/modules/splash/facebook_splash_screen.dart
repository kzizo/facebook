import 'package:facebook/core/app_assets.dart';
import 'package:facebook/modules/login/facebook_login_screen.dart';
import 'package:flutter/material.dart';

class FacebookSplashScreen extends StatefulWidget {
  static const String routeName = '/facebook_splash_screen';
  const FacebookSplashScreen({super.key});

  @override
  State<FacebookSplashScreen> createState() => _FacebookSplashScreenState();
}

class _FacebookSplashScreenState extends State<FacebookSplashScreen> {
  @override
  void initState() {
    super.initState();
    
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushNamedAndRemoveUntil(FacebookLoginScreen.routeName, (route) => false);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Image.asset(AppAssets.facebookLogo),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(bottom: 36),
              child: Image.asset(AppAssets.fromMetaImg),
            )
          ],
        ),
      ),
    );
  }
}
