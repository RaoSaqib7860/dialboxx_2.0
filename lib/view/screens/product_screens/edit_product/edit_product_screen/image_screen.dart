import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../custom_widgets/app_colors.dart';

class ImageScreen extends StatefulWidget {
  final int? index;
  const ImageScreen({this.index,Key? key}) : super(key: key);

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 10.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: Colors.grey.withAlpha(50),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey,width: 1)
                      ),
                      child: Center(
                        child: Icon(Icons.image,color: Colors.blue,size: 35,),
                      ),
                    ),
                    SizedBox(width: 4.w,),
                    Stack(
                      children: [
                        Container(
                          height: 10.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                              color: Colors.grey.withAlpha(50),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(color: Colors.grey.shade100,spreadRadius: 1,offset: Offset(1, 1)),
                                BoxShadow(color: Colors.grey.shade100,spreadRadius: 1,offset: Offset(-1, -1)),
                              ]
                          ),
                          child: Center(
                            child: Icon(Icons.image,color: Colors.blue,size: 35,),
                          ),
                        ),
                        Positioned(
                            left: 16.w,
                            top: -1.w,
                            child: Container(
                              height: 2.h,
                              width: 5.w,
                              color: Colors.white,
                              child: Center(
                                child: Icon(Icons.close,size: 15,),
                              ),
                            )
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 1.h,),
              Text(
                'Add Product Image (upto 7)',
                style: TextStyle(color: Colors.grey,fontSize: 11.sp),
              ),
              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: redColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 2.7.w,vertical: 0.8.h),
                      child: Text(
                        'Save Changes',
                        style: TextStyle(color: Colors.white,fontSize: 10.sp),
                      ),
                    ),
                  ),
                  SizedBox(width: 3.w,),
                  Container(
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 0.8.h),
                      child: Text(
                        'Next',
                        style: TextStyle(color: Colors.white,fontSize: 10.sp),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 4.h,)
            ],
          ),
        ),
      ),
    );
  }
}
