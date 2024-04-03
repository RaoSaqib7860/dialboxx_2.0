import 'package:dial_box_updated/view/screens/order_screens/create_order_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../../custom_widgets/app_colors.dart';

class AllOrdersScreen extends StatefulWidget {
  const AllOrdersScreen({Key? key}) : super(key: key);

  @override
  State<AllOrdersScreen> createState() => _AllOrdersScreenState();
}

class _AllOrdersScreenState extends State<AllOrdersScreen> {
  int ind = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 8.h,
            width: 100.w,
            color: blueColor,
            child: Center(
              child: Text(
                'All Orders',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                ),
              ),
            ),
          ),
          SizedBox(height: 2.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              children: [
                Container(
                  height: 4.h,
                  width: 77.w,
                  child: TextField(
                    style: TextStyle(fontSize: 12.sp),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      hintText: 'Search Orders',
                      hintStyle: TextStyle(fontSize: 11.sp,color: Colors.grey),
                      contentPadding: EdgeInsets.only(top: 0.5.h,),
                      prefixIcon: Icon(Icons.search,color: Color(0xff6D6D6D),size: 2.3.h,),
                    ),
                  ),
                ),
                SizedBox(width: 4.w,),
                Expanded(child: SvgPicture.asset('assets/svgs/comp.svg',height: 2.5.h,)),
              ],
            ),
          ),
          SizedBox(height: 2.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Container(
              height: 3.3.h,
              width: 100.w,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ind = 1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width:  1.3,color: ind == 1 ? blueColor : Color(0xff4C4C4C)),
                        color: ind == 1 ? blueColor : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.5.h),
                        child: Text(
                          'All',
                          style: TextStyle(
                            color: ind == 1 ? Colors.white : Color(0xff4C4C4C),
                            fontSize: 9.sp
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w,),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ind = 2;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.3,color: ind == 2 ? blueColor : Color(0xff4C4C4C)),
                        color: ind == 2 ? blueColor : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.5.h),
                        child: Text(
                          'Awaiting processing (0)',
                          style: TextStyle(
                              color: ind == 2 ? Colors.white : Color(0xff4C4C4C),
                              fontSize: 9.sp
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w,),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ind = 3;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.3,color: ind == 3 ? blueColor : Color(0xff4C4C4C)),
                        color: ind == 3 ? blueColor : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.5.h),
                        child: Text(
                          'Processing (0)',
                          style: TextStyle(
                              color: ind == 3 ? Colors.white : Color(0xff4C4C4C),
                              fontSize: 9.sp
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w,),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ind = 4;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.3,color: ind == 4 ? blueColor : Color(0xff4C4C4C)),
                        color: ind == 4 ? blueColor : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.5.h),
                        child: Text(
                          'Ready for pickup (0)',
                          style: TextStyle(
                              color: ind == 4 ? Colors.white : Color(0xff4C4C4C),
                              fontSize: 9.sp
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w,),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ind = 5;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.3,color: ind == 5 ? blueColor : Color(0xff4C4C4C)),
                        color: ind == 5 ? blueColor : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.5.h),
                        child: Text(
                          'Completed (0)',
                          style: TextStyle(
                              color: ind == 5 ? Colors.white : Color(0xff4C4C4C),
                              fontSize: 9.sp
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w,),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ind = 6;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.3,color: ind == 6 ? blueColor : Color(0xff4C4C4C)),
                        color: ind == 6 ? blueColor : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.5.h),
                        child: Text(
                          'Cancelled (0)',
                          style: TextStyle(
                              color: ind == 6 ? Colors.white : Color(0xff4C4C4C),
                              fontSize: 9.sp
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w,),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        ind = 7;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.3,color: ind == 7 ? blueColor : Color(0xff4C4C4C)),
                        color: ind == 7 ? blueColor : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.5.h),
                        child: Text(
                          'Archived (0)',
                          style: TextStyle(
                              color: ind == 7 ? Colors.white : Color(0xff4C4C4C),
                              fontSize: 9.sp
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w,),
                ],
              ),
            ),
          ),
          SizedBox(height: 2.h,),
          if(ind == 1)
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
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
                            padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Order #31245',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Items: 3',
                                      style: TextStyle(
                                        fontSize: 9.sp,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      '14-feb-2024',
                                      style: TextStyle(
                                        fontSize: 9.sp,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 1.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Customer name:',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Color(0xff5B5B5B),
                                      ),
                                    ),
                                    Container(
                                      color: Color(0xffF0C9D0),
                                      child: Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 1.w,vertical: 0.5.h),
                                        child: Text(
                                          'Rs1,500.00',
                                          style: TextStyle(
                                              color: redColor,
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                //SizedBox(height: 1.h,),
                                Text(
                                  'Hamza',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: redColor,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 2.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Fulfillment:',
                                          style: TextStyle(
                                              fontSize: 9.sp,
                                              color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(width: 0.6.w,),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: blueColor,
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.3.h),
                                            child: Text(
                                              'Completed',
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Payment:',
                                          style: TextStyle(
                                            fontSize: 9.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(width: 0.6.w,),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: blueColor,
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.3.h),
                                            child: Text(
                                              'Completed',
                                              style: TextStyle(
                                                fontSize: 8.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                //SizedBox(height: 1.h,),
                                Divider(
                                  thickness: 1,
                                  color: Colors.black26,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Customer type',
                                          style: TextStyle(
                                            fontSize: 9.sp,
                                            color: Color(0xff5B5B5B),
                                          ),
                                        ),
                                        SizedBox(height: 0.2.h,),
                                        Text(
                                          'Existing',
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: blueColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SvgPicture.asset('assets/svgs/frame.svg',height: 3.7.h,),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(3),
                                          border: Border.all(width: 1,color: Color(0xff707070))
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 1.w,),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Details',
                                              style: TextStyle(
                                                color: Color(0xff858585),
                                                fontSize: 9.sp,
                                              ),
                                            ),
                                            SizedBox(width: 2.5.w,),
                                            Icon(Icons.keyboard_arrow_right_sharp,color: Colors.black,size: 2.3.h,)
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h,)
                      ],
                    );
                  },),
                ),
                Positioned(
                  bottom: 1.h,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 5.w),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CreateOrderScreen(),));
                      },
                      child: Container(
                        height: 5.5.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                          color: Color(0xff005493),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Create Order',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
