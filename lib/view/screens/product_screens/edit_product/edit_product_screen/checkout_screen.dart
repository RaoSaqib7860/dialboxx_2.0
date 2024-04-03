import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../custom_widgets/app_colors.dart';

class CheckoutScreen extends StatefulWidget {
  final int? index;
  const CheckoutScreen({this.index,Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  TextEditingController checkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                child: Container(
                  // height: 20.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12,width: 1)
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 2.h),
                            child: Text(
                              'Create Express Checkout Url For Direct Order',
                              style: TextStyle(fontSize: 11.sp,color: Colors.black54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 1.h),
                            child: Text(
                              'Product Meta',
                              style: TextStyle(fontSize: 11.sp,color: Colors.black54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 2.w,right: 2.w,top: 1.h),
                            child: Text(
                              'QUANTITY',
                              style: TextStyle(fontSize: 10.sp,color: Colors.black54),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 2.w,right: 2.w,top: 1.2.h),
                        child: Container(
                          height: 3.h,
                          child: TextField(
                            style: TextStyle(fontSize: 10.sp),
                            controller: checkController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                              hintText: 'Quantity',
                              labelStyle: TextStyle(fontSize: 9.sp,color: Colors.grey),
                              hintStyle: TextStyle(fontSize: 9.sp),
                              suffixIcon: Icon(Icons.arrow_drop_down_sharp,size: 20,),
                              //Column(children: [Icon(Icons.arrow_drop_up,size: 20,),Icon(Icons.arrow_drop_down,size: 18,)],),
                              contentPadding: EdgeInsets.only(top: 0.5.h,left: 2.w,right: 2.w),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 1.h,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
