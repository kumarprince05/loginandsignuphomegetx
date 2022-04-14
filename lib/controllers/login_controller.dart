import 'package:flutter_application_1/view/bottom_navbar.dart';

import 'package:get/get.dart';

import 'package:flutter/material.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> loginkey = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void onInit() {
    email;
    password;

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
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

  checklogin() {
    final isvalidate = loginkey.currentState!.validate();
    if (!isvalidate) {
      return;
    } else {
      Get.to(() => BottomBarScreen());
    }
    loginkey.currentState!.save();
  }
}
