import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/constants/constants.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<String> text = [
    'Kumar',
    'Angel',
    'Prince',
    'Angelaa',
    'Aswin',
  ];
  List<String> image = [
    'lib/assets/boy1.jpg',
    'lib/assets/girl1.jpg',
    'lib/assets/boy2.jpg',
    'lib/assets/girl2.jpg',
    'lib/assets/boy3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundc,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Image.asset('lib/assets/flag.png').p8(),
        title: Text(
          'Coaches',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Center(
              child: Text(
            ' 32 min',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          )).p8()
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              3.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Favourites',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              2.h.heightBox,
              SizedBox(
                height: 20.h,
                width: 92.w,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 22.h,
                        width: 32.w,
                        child: Column(
                          children: [
                            PhysicalModel(
                              elevation: 1,
                              color: Colors.white,
                              shadowColor: Colors.black,
                              shape: BoxShape.circle,
                              child: Container(
                                height: 12.h,
                                width: 25.w,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage(image[index]),
                                        fit: BoxFit.fitHeight)
                                    // border:
                                    //Border.all(color: Colors.redAccent, width: 5)
                                    ),
                              ).onTap(() {
                                if (index == 0) {
                                } else if (index == 1) {
                                } else if (index == 2) {
                                } else if (index == 3) {
                                } else if (index == 4) {}
                              }),
                            ),
                            Text(
                              text[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ).p8(),
                          ],
                        ).pSymmetric(h: 2.w),
                      );
                    }),
              ),
              0.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recommended',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              2.h.heightBox,
              SizedBox(
                height: 55.h,
                width: 92.w,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  //physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      // crossAxisAlignment: CrossAxisAlignment.spa,
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 15.h,
                          width: 90.w,
                          child: Material(
                            elevation: 1,
                            child: Container(
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    PhysicalModel(
                                      elevation: 1,
                                      color: Colors.white,
                                      shadowColor: Colors.black,
                                      shape: BoxShape.circle,
                                      child: Container(
                                        height: 12.h,
                                        width: 24.w,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            image: DecorationImage(
                                                image: AssetImage(image[index]),
                                                fit: BoxFit.fitHeight)
                                            // border:
                                            //Border.all(color: Colors.redAccent, width: 5)
                                            ),
                                      ).onTap(() {
                                        if (index == 0) {
                                        } else if (index == 1) {
                                        } else if (index == 2) {
                                        } else if (index == 3) {
                                        } else if (index == 4) {}
                                      }),
                                    ),
                                    0.w.widthBox,
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          text[index],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        0.3.h.heightBox,
                                        Text(
                                          """Lorem ipsum is simmply dummy te           """,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 8.sp,
                                          ),
                                        ),
                                        0.3.h.heightBox,
                                        Text(
                                          """Lorem ipsum is simmply dummy te          """,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 8.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]).pSymmetric(h: 5.w),
                            ),
                          ),
                        ),
                      ],
                    ).p2();
                  },
                ),
              ),
            ],
          ).pSymmetric(h: 4.w),
        ),
      ),
    );
  }
}
