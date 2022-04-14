import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class AppTextFeild extends StatelessWidget {
  const AppTextFeild({
    Key? key,
    required this.hint,
    //required this.label,
  }) : super(key: key);
  //final String label;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      focusColor: Vx.black,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      // enabledBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(12.sp),
      //     borderSide: BorderSide(width: 3, color: Colors.grey)),
      // focusedBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(0.sp),
      //     borderSide: BorderSide(width: 3, color: Colors.black)),
      hintStyle: TextStyle(color: Colors.grey),
      hintText: hint,
      filled: true,
      fillColor: Colors.white,
    ));
  }
}
