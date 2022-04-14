import 'package:flutter_application_1/view/login.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

class SignupController extends GetxController {
  GlobalKey<FormState> signUpkey = GlobalKey();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();


  @override
  void onInit() {
    name;
    email;
    password;
    confirmpassword;

    super.onInit();
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    confirmpassword.dispose();
    super.dispose();
  }

  String? namevalidation(value) {
    if (value == '') {
      return 'enter your name';
    }
    return null;
  }

  String? emailvalidation(value) {
    if (value == '') {
      return 'enter your email';
    }
    return null;
  }

  String? passworValidation(value) {
    if (value == '' || value != password.text) {
      return 'enter your password';
    }
    return null;
  }
    // ignore: body_might_complete_normally_nullable
    String? confirmpassworValidation(value) {
      if (value == '' || value != confirmpassword.text) {
        return 'Reenter password';
      }
      return null;
    }

    checksignup() {
      final isvalidate = signUpkey.currentState!.validate();
      if (!isvalidate) {
        return;
      } else {
        Get.to(() => LoginPage());
      }
      signUpkey.currentState!.save();
    }
  }

