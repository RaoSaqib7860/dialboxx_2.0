import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../../../custom_widgets/app_colors.dart';
import '../../../../custom_widgets/custom_form_field.dart';

class ProfileSettingScreen extends StatefulWidget {
  const ProfileSettingScreen({Key? key}) : super(key: key);

  @override
  State<ProfileSettingScreen> createState() => _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends State<ProfileSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 7.h,
              width: 100.w,
              color: blueColor,
              child: Center(
                child: Row(
                  children: [
                    SizedBox(width: 3.w,),
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset('assets/svgs/back_arrow.svg',height: 2.h,)),
                    SizedBox(width: 30.w,),
                    Text(
                      'Profile Settings',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Text(
                'Edit General Settings',
                style: TextStyle(
                  color: blueColor,
                  fontSize: 11.5.sp,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            CustomFormField(name: 'Name', hint: 'Type here',),
            CustomFormField(name: 'Email', hint: 'Type here',),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Container(
                height: 4.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: blueColor
                ),
                child: Center(
                  child: Text(
                    'Update',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 3.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Text(
                'Change Password',
                style: TextStyle(
                    color: blueColor,
                    fontSize: 11.5.sp,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            CustomFormField(name: 'Old Password', hint: 'Type here',),
            CustomFormField(name: 'New Password', hint: 'Type here',),
            CustomFormField(name: 'Conform Password', hint: 'Type here',),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Container(
                height: 4.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: redColor
                ),
                child: Center(
                  child: Text(
                    'Change',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
