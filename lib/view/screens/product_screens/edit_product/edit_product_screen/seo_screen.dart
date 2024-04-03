
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../custom_widgets/app_colors.dart';

class SEOScreen extends StatefulWidget {
  final int? index;
  const SEOScreen({this.index,Key? key}) : super(key: key);

  @override
  State<SEOScreen> createState() => _SEOScreenState();
}

class _SEOScreenState extends State<SEOScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController keyController = TextEditingController();
  TextEditingController desController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 1.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.withAlpha(100), width: 1)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 1.h),
                        child: Text(
                          'META TITLE',
                          style: TextStyle(fontSize: 9.sp),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 1.2.h),
                        child: Container(
                          height: 4.h,
                          child: TextField(
                            style: TextStyle(fontSize: 12.sp),
                            controller: titleController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                              hintText: 'Title',
                              labelText: 'Title',
                              labelStyle: TextStyle(fontSize: 10.sp,color: Colors.grey),
                              hintStyle: TextStyle(fontSize: 10.sp),
                              contentPadding: EdgeInsets.only(top: 0.5.h,left: 2.w,right: 2.w),
                            ),
                          ),
                        ),
                      ),
                     // SizedBox(height: 2.h,),
                      Padding(
                        padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 1.h),
                        child: Text(
                          'META KEYWORD',
                          style: TextStyle(fontSize: 9.sp),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 1.2.h),
                        child: Container(
                          height: 4.h,
                          child: TextField(
                            style: TextStyle(fontSize: 12.sp),
                            controller: keyController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                              hintText: 'Title',
                              labelText: 'Keyword',
                              labelStyle: TextStyle(fontSize: 10.sp,color: Colors.grey),
                              hintStyle: TextStyle(fontSize: 10.sp),
                              contentPadding: EdgeInsets.only(top: 0.5.h,left: 2.w,right: 2.w),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 1.h),
                        child: Text(
                          'META DESCRIPTION',
                          style: TextStyle(fontSize: 9.sp),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 4.w,right: 4.w,top: 1.2.h),
                        child: Container(
                          height:10.h,
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                           // minLines: 1,
                            textAlign: TextAlign.left,
                            maxLines: null,
                            expands: true,
                            textAlignVertical: TextAlignVertical.top,
                            style: TextStyle(fontSize: 12.sp),
                            controller: desController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                              //isDense: true,
                              hintText: 'Title',
                            //  labelText: 'Title',
                              labelStyle: TextStyle(fontSize: 10.sp,color: Colors.grey),
                              hintStyle: TextStyle(fontSize: 10.sp),
                              contentPadding: EdgeInsets.only(top: 1.h,left: 2.w,right: 2.w),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 3.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: Row(
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
              ),
              SizedBox(height: 4.h,)
            ],
          ),
        ),
      ),
    );
  }
}
