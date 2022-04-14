import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/bottomnavbar_controller.dart';
import 'package:flutter_application_1/view/homepage.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:sizer/sizer.dart';

class BottomBarScreen extends StatelessWidget {
  BottomBarScreen({Key? key}) : super(key: key);

  BottomController _bottomController =
      Get.put(BottomController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() => SizedBox(
            height: 8.h,
            child: Container(
              //height: 7.h,
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.grey)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        _bottomController.changeTabIndex(0);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone,
                            color: _bottomController.tabindex.value == 0
                                ? Colors.black
                                : Colors.grey,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _bottomController.changeTabIndex(1);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.security,
                            color: _bottomController.tabindex.value == 1
                                ? Colors.black
                                : Colors.grey,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _bottomController.changeTabIndex(2);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color: _bottomController.tabindex.value == 2
                                ? Colors.black
                                : Colors.grey,
                            size: 30,
                          ),
                        ],
                      ),
                    )
                  ]).pSymmetric(h: 5.w),
            ),
          )),
      body: Obx(
        () => SafeArea(
          child: Center(
            child: IndexedStack(
              index: _bottomController.tabindex.value,
              children: [
                HomePage(),
                Container(
                  height: 100.h,
                  width: 100.w,
                  color: Colors.yellow,
                ),
                Container(
                  height: 100.h,
                  width: 100.w,
                  color: Colors.deepOrangeAccent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
