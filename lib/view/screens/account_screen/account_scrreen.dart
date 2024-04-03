import 'package:dial_box_updated/view/screens/account_screen/profile_setting_screen/profile_setting_screen.dart';
import 'package:dial_box_updated/view/screens/account_screen/store_setting_screen/store_setting_screen.dart';
import 'package:dial_box_updated/view/screens/account_screen/subsription_screens/subscription_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../../custom_widgets/app_colors.dart';
import '../payment_screen/payment_screen.dart';
import 'domain_setting_screen/domain_setting_screen.dart';
import 'faq_screen/faq_screen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 7.h,
              width: 100.w,
              color: blueColor,
              child: Center(
                child: Text(
                  'Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                children: [
                  Container(
                    height: 9.h,
                    width: 18.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey,width: 1)
                    ),
                    child: Center(
                      child: Icon(Icons.image,color: blueColor,size: 10.w,),
                    ),
                  ),
                  SizedBox(width: 3.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Charlie Clothing',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp
                        ),
                      ),
                      SizedBox(height: 0.8.h,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => StoreSettingScreen(),));
                        },
                        child: Text(
                          'Edit business details',
                          style: TextStyle(
                              color: blueColor,
                              fontSize: 11.sp,
                            decoration: TextDecoration.underline
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Container(
                width: 100.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),spreadRadius: 1,blurRadius: 2),
                      BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),spreadRadius: 1,blurRadius: 2),
                    ]
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.3.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Free Trial validation',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.sp
                            ),
                          ),
                          SizedBox(height: 1.h,),
                          Text(
                            '6 Days',
                            style: TextStyle(
                                color: redColor,
                                fontSize: 13.sp,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SubscriptionScreen(),));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: blueColor,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 1.1.h),
                            child: Text(
                              'See packages',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11.sp
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileSettingScreen(),));
                },
                child: customRow(image: 'my_acc',text: 'My Account')),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentScreen(),));
                },
                child: customRow(image: 'pay_set',text: 'Payment Settings')),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DomainSettingScreen(),));
                },
                child: customRow(image: 'set',text: 'Domain Setting')),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SubscriptionScreen(),));
                },
                child: customRow(image: 'subb',text: 'Subscriptions')),
            customRow(image: 'tutorial',text: 'Tutorials'),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FAQScreen(),));
                },
                child: customRow(image: 'faqs',text: 'FAQ’s')),
          ],
        ),
      ),
    );
  }

  Widget customRow({String? image, String? text}){
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Row(
            children: [
              SvgPicture.asset('assets/svgs/$image.svg',height: 3.h,),
              SizedBox(width: 3.w,),
              Text(
                text!,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 2.h,)
      ],
    );
  }

}
