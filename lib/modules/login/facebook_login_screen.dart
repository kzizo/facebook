import 'package:facebook/core/app_assets.dart';
import 'package:facebook/core/app_colors.dart';
import 'package:facebook/modules/home/facebook_home_screen.dart';
import 'package:flutter/material.dart';

class FacebookLoginScreen extends StatefulWidget{
  static const String routeName = '/facebook_login_screen';
  const FacebookLoginScreen({super.key});

  @override
  State<FacebookLoginScreen> createState() {
    return _FacebookLoginScreenState();
  }
}

class _FacebookLoginScreenState extends State<FacebookLoginScreen>{
  bool _showPassword = false;
  bool _forgetPassword = false;
  bool _haveAccount = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 75, bottom: 65),
                      child: Center(
                        child: Image.asset(AppAssets.facebookLogo),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.lightBlueGray,
                            border: InputBorder.none,
                            hintText: "Mobile Number or Email Address",
                            hintStyle: TextStyle(
                              color: AppColors.gray,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(color: AppColors.gray)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(color: AppColors.gray)
                            ),
                          )
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 24),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.lightBlueGray,
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(
                              color: AppColors.gray,
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                          ),

                          contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),

                          suffixIcon: IconButton(onPressed: () {
                            _showPassword = ! _showPassword;
                            setState(() {});
                          }, icon: Icon(_showPassword ? Icons.visibility : Icons.visibility_off, color: AppColors.gray,)),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: AppColors.gray),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: AppColors.gray),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 15, right:15, top: 25, bottom: 24),

                      child: GestureDetector(onTap: (){
                        Navigator.pushReplacementNamed(context, FacebookHomeScreen.routeName);
                        setState(() {});
                      }, child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        alignment: Alignment.center,
                        child: Text("Login", style: TextStyle(
                          color: AppColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),),
                      )),
                    ),

                    GestureDetector(onTap: () {
                      _forgetPassword = ! _forgetPassword;
                      setState(() {});
                    },
                      child: Text(_forgetPassword ? "Making a forget password Page" : "Forgotten Password ?", style: TextStyle(
                        color: AppColors.gray,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15, right:15, top: 25, bottom: 15),

                child: GestureDetector(onTap: (){
                  _haveAccount = ! _haveAccount;
                  setState(() {});
                }, child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColors.blue)
                  ),
                  alignment: Alignment.center,
                  child: Text(_haveAccount ? "Create Account" : "Making a create account Page", style: TextStyle(
                    color: AppColors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),),
                )),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: Image.asset(AppAssets.metaImg),
              )
            ],
          )
      ),
    );
  }
}
