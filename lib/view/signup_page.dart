import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/constants/constants.dart';
import 'package:flutter_application_1/controllers/signup_controller.dart';
import 'package:flutter_application_1/view/login.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  SignupController _signupController = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundc,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _signupController.signUpkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 19.h,
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
                  'SignUp with Us!',
                  style: TextStyle(
                    fontSize: 19.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                0.5.heightBox,
                Text(
                  'SignUp and Continue',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                1.h.heightBox,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextFormField(
                  controller: _signupController.name,
                  validator: _signupController.namevalidation,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      hintText: 'User Name',
                      hintStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                2.h.heightBox,
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
                  controller: _signupController.email,
                  validator: _signupController.emailvalidation,
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
                  controller: _signupController.password,
                  validator: _signupController.passworValidation,
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
                2.h.heightBox,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Confirm Password',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextFormField(
                  controller: _signupController.confirmpassword,
                  validator: _signupController.confirmpassworValidation,
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
                        'SIGNUP',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ).onTap(() {
                    //Get.to(() => LoginPage());
                    _signupController.checksignup();
                  }),
                ),
                1.h.heightBox,
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already have an account ?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                        ),
                      ),
                      TextSpan(
                        text: 'login',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12.sp,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(() => LoginPage());
                            // Single tapped.
                          },
                      ),
                    ],
                  ),
                ).pOnly(bottom: 3.h, top: 0.h)
              ],
            ).pSymmetric(h: 15.w),
          ),
        ),
      ),
    );
  }
}
