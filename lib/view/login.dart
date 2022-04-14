import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/controllers/login_controller.dart';
import 'package:flutter_application_1/view/signup_page.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundc,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _loginController.loginkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 20.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 10, //radius is 35.
                          backgroundImage: AssetImage('lib/assets/avtar2.png')),
                    ),
                  ),
                ),
                2.h.heightBox,
                Text(
                  'Login with Us!',
                  style: TextStyle(
                    fontSize: 19.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                0.5.heightBox,
                Text(
                  'Login and Continue',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                5.h.heightBox,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextFormField(
                  controller: _loginController.email,
                  validator: _loginController.emailvalidation,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      hintText: 'kumarprince@gmail.com',
                      hintStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                2.h.heightBox,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextFormField(
                  controller: _loginController.password,
                  validator: _loginController.passworValidation,
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      hintText: '*********',
                      hintStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                4.h.heightBox,
                PhysicalModel(
                  color: Colors.grey,
                  elevation: 4,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 5.9.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      color: Color(0xffFFB742),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ).onTap(() {
                    _loginController.checklogin();
                  }),
                ),
                4.h.heightBox,
                Center(
                  child: Text(
                    'Or login using Social media',
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                3.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 7.h,
                      width: 12.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("lib/assets/facebook.png"),
                              fit: BoxFit.cover)),
                    ),
                    3.w.widthBox,
                    Container(
                      height: 7.h,
                      width: 12.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("lib/assets/google.png"),
                              fit: BoxFit.cover)),
                    ),
                    3.w.widthBox,
                    Container(
                      height: 7.h,
                      width: 12.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("lib/assets/twitter.png"),
                              fit: BoxFit.cover)
                              ),
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'You Don\'t have an account ?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                        ),
                      ),
                      TextSpan(
                        text: 'SignUp',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12.sp,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(() => SignUpPage());
                            // Single tapped.
                          },
                      ),
                    ],
                  ),
                ).pOnly(bottom: 1.h, top: 5.h)
              ],
            ).pSymmetric(h: 15.w),
          ),
        ),
      ),
    );
  }
}
