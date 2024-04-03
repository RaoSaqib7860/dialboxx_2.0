import 'package:dial_box_updated/custom_widgets/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 8.h,
              width: 100.w,
              color: blueColor,
              child: Center(
                child: Padding(
                  padding:  EdgeInsets.only(left: 6.w,right: 4.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Welcome {Seller name}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                              'Online',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                //fontWeight: FontWeight.bold
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 3.w),
                            child: FlutterSwitch(
                              toggleColor: Colors.green,
                              width: 10.w,
                              height: 2.7.h,
                              valueFontSize: 25.0,
                              toggleSize: 2.5.h,
                              value: _value,
                              borderRadius: 30.0,
                              padding: 1,
                              showOnOff: false,
                              inactiveColor: Color(0xffD2D2D2),
                              activeColor: Color(0xffD2D2D2),
                              onToggle: (val) {
                                setState(() {
                                  _value = val;
                                });
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 3.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
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
                  padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 1.h,),
                      Text(
                        'Share store link',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                            color: Colors.black
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      Text(
                        'Customer can visit the following link and place their orders.',
                        style: TextStyle(
                            fontSize: 11.sp,
                            color: Colors.black,
                          fontWeight: FontWeight.w500,
                          height: 0.17.h
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Softmount/dialboxx.com',
                            style: TextStyle(
                                fontSize: 9.7.sp,
                                color: blueColor,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff47AC0E),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.5.w,vertical: 0.4.h),
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/svgs/whatsappp.svg',height: 1.5.h,),
                                  SizedBox(width: 2.w,),
                                  Text(
                                    'Share',
                                    style: TextStyle(
                                        fontSize: 9.sp,
                                        color: Colors.white
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 1.5.h,),
                      Container(
                        decoration: BoxDecoration(
                          color: blueColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 0.4.h),
                          child: Row(
                            children: [
                              Text(
                                'Get your custom domain',
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: Colors.white
                                ),
                              ),
                              SizedBox(width: 5.w,),
                              SvgPicture.asset('assets/svgs/dropright.svg',height: 1.5.h,),
                            ],
                          ),
                        ),
                      )
                      ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
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
                child: Row(
                  children: [
                    Container(
                      height: 15.h,
                      width: 30.w,
                      color: Colors.grey,
                      child: Center(
                        child: SvgPicture.asset('assets/svgs/youtube (1).svg',height: 3.h,),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'How to build your online store and get your ',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Colors.black
                                    )
                                  ),
                                  TextSpan(
                                      text: 'First order!',
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          color: Colors.black,
                                        fontWeight: FontWeight.bold
                                      )
                                  )
                                ]
                              )
                          ),
                          SizedBox(height: 2.h,),
                          Text(
                            'Learn how you can setup your website & profile with Dailboxx with ZERO coding skills',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.black
                              )
                          )
                        ],
                      ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 1.5.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Overview',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Lifetime',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      //SizedBox(width: 0.1.w,),
                      Icon(Icons.keyboard_arrow_down_outlined,color: Colors.black,size: 3.h,),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 1.5.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
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
                  padding:  EdgeInsets.only(left: 3.w,right: 8.w,top: 1.h,bottom: 1.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Row(
                       children: [
                         RichText(
                             text: TextSpan(
                               children: [
                                 TextSpan(
                                   text: 'Order Statistics - ',
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontSize: 10.sp
                                   )
                                 ),
                                 TextSpan(
                                     text: 'January',
                                     style: TextStyle(
                                         color: blueColor,
                                         fontSize: 10.sp
                                     )
                                 )
                               ]
                             )
                         ),
                         Icon(Icons.keyboard_arrow_down_outlined,color: blueColor,size: 2.h,),
                       ],
                     ),
                      SizedBox(height: 1.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 0.5.h,),
                              Text(
                                'Pending',
                                style: TextStyle(
                                    fontSize: 9.sp,
                                    color: Color(0xff515151),
                                    //fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '6',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 0.5.h,),
                              Text(
                                'Completed',
                                style: TextStyle(
                                  fontSize: 9.sp,
                                  color: Color(0xff515151),
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 0.5.h,),
                              Text(
                                'Processing',
                                style: TextStyle(
                                  fontSize: 9.sp,
                                  color: Color(0xff515151),
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 2.h,),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: blueColor,
                              border: Border.all(width: 1,color: Colors.grey)
                            ),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 1.w,vertical: 0.7.h),
                              child: SvgPicture.asset('assets/svgs/total_order.svg',height: 2.h,),
                            )
                          ),
                          SizedBox(width: 3.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Orders',
                                style: TextStyle(
                                  fontSize: 8.sp,
                                  color: Color(0xff515151),
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 0.2.h,),
                              Text(
                                '7',
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 0.5.h,),

                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
              child: Container(
                height: 9.h,
                width: 100.w,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3),
                              boxShadow: [
                                BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),spreadRadius: 1,blurRadius: 2),
                                BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),spreadRadius: 1,blurRadius: 2),
                              ]
                          ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.6.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Earnings - 2023',
                                  style: TextStyle(
                                    color: Colors.black.withAlpha(200),
                                    fontSize: 9.sp
                                  ),
                                ),
                                SizedBox(height: 1.3.h,),
                                Text(
                                  'Rs138,867.20',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11.sp,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                    ),
                    SizedBox(width: 4.w,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                            boxShadow: [
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),spreadRadius: 1,blurRadius: 2),
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),spreadRadius: 1,blurRadius: 2),
                            ]
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.6.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Sale - 2023',
                                style: TextStyle(
                                    color: Colors.black.withAlpha(200),
                                    fontSize: 9.sp
                                ),
                              ),
                              SizedBox(height: 1.3.h,),
                              Text(
                                '10',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
              child: Container(
                height: 9.h,
                width: 100.w,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                            boxShadow: [
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),spreadRadius: 1,blurRadius: 2),
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),spreadRadius: 1,blurRadius: 2),
                            ]
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.6.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Customers',
                                style: TextStyle(
                                    color: Colors.black.withAlpha(200),
                                    fontSize: 9.sp
                                ),
                              ),
                              SizedBox(height: 1.3.h,),
                              Text(
                                '5',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 4.w,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                            boxShadow: [
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),spreadRadius: 1,blurRadius: 2),
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),spreadRadius: 1,blurRadius: 2),
                            ]
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.6.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Products',
                                style: TextStyle(
                                    color: Colors.black.withAlpha(200),
                                    fontSize: 9.sp
                                ),
                              ),
                              SizedBox(height: 1.3.h,),
                              Text(
                                '10',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
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
                  padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.6.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Earnings performance',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 9.sp
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      Container(
                        height: 20.h,
                        child: AspectRatio(
                          aspectRatio: 1.5,
                          child: LineChart(
                            LineChartData(
                              gridData: FlGridData(show: false),
                              titlesData: FlTitlesData(show: false),
                              borderData: FlBorderData(show: false),
                              lineBarsData: [
                                LineChartBarData(
                                  spots: [
                                    FlSpot(0, 3),
                                    FlSpot(1, 1),
                                    FlSpot(2, 4),
                                    FlSpot(3, 2),
                                    FlSpot(4, 5),
                                  ],
                                  isCurved: true,
                                  colors: [Colors.blue],
                                  belowBarData: BarAreaData(show: false),
                                  dotData: FlDotData(show: false),
                                ),
                                LineChartBarData(
                                  spots: [
                                    FlSpot(0, 1),
                                    FlSpot(1, 4),
                                    FlSpot(2, 2),
                                    FlSpot(3, 5),
                                    FlSpot(4, 3),
                                  ],
                                  isCurved: true,
                                  colors: [Colors.green],
                                  belowBarData: BarAreaData(show: false),
                                  dotData: FlDotData(show: false),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Date',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 9.sp
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
              child: Container(
                height: 7.h,
                width: 100.w,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                            boxShadow: [
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),spreadRadius: 1,blurRadius: 2),
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),spreadRadius: 1,blurRadius: 2),
                            ]
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'TODAY\'S TOTAL SALE',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 1.h,),
                              Text(
                                'PKR 0.00',
                                style: TextStyle(
                                    color: Colors.black.withAlpha(200),
                                    fontSize: 9.sp
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.w,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                            boxShadow: [
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),spreadRadius: 1,blurRadius: 2),
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),spreadRadius: 1,blurRadius: 2),
                            ]
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'TODAY\'S ORDER',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 1.h,),
                              Text(
                                '0',
                                style: TextStyle(
                                    color: Colors.black.withAlpha(200),
                                    fontSize: 9.sp
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 1.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
              child: Container(
                height: 7.h,
                width: 100.w,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                            boxShadow: [
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),spreadRadius: 1,blurRadius: 2),
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),spreadRadius: 1,blurRadius: 2),
                            ]
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'YESTERDAY',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 1.h,),
                              Text(
                                'PKR 0.00',
                                style: TextStyle(
                                    color: Colors.black.withAlpha(200),
                                    fontSize: 9.sp
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.w,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                            boxShadow: [
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),spreadRadius: 1,blurRadius: 2),
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),spreadRadius: 1,blurRadius: 2),
                            ]
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '7 DAYS',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 1.h,),
                              Text(
                                'PKR 0.00',
                                style: TextStyle(
                                    color: Colors.black.withAlpha(200),
                                    fontSize: 9.sp
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 1.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
              child: Container(
                height: 7.h,
                width: 100.w,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                            boxShadow: [
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),spreadRadius: 1,blurRadius: 2),
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),spreadRadius: 1,blurRadius: 2),
                            ]
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'THIS MONTH',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 1.h,),
                              Text(
                                'PKR 13,494.00',
                                style: TextStyle(
                                    color: Colors.black.withAlpha(200),
                                    fontSize: 9.sp
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.w,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                            boxShadow: [
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),spreadRadius: 1,blurRadius: 2),
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),spreadRadius: 1,blurRadius: 2),
                            ]
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'LAST MONTH',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 1.h,),
                              Text(
                                'PKR 3,160.00',
                                style: TextStyle(
                                    color: Colors.black.withAlpha(200),
                                    fontSize: 9.sp
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
              child: Container(
                height: 20.h,
                width: 100.w,
                child: Image(
                  image: AssetImage('assets/images/coming_soon.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 1.h,),
            SvgPicture.asset('assets/svgs/stepper.svg',width: 10.w,),
            SizedBox(height: 2.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
              child: Container(
                height: 20.h,
                width: 100.w,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                            boxShadow: [
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),spreadRadius: 1,blurRadius: 2),
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),spreadRadius: 1,blurRadius: 2),
                            ]
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Product Limit',
                                style: TextStyle(
                                  color: blueColor,
                                  fontSize: 8.sp,
                                ),
                              ),
                              SizedBox(height: 0.5.h,),
                              RichText(
                                  text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '18',
                                    style: TextStyle(
                                      color: redColor,
                                      fontSize: 8.sp,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '/300',
                                    style: TextStyle(
                                      color: blueColor,
                                      fontSize: 8.sp,
                                    ),
                                  )
                                ]
                              )
                              ),
                              Divider(thickness: 1,color: Colors.grey,),
                              Center(child: Image(image: AssetImage('assets/images/blue_circle.png'),height: 10.h,)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3),
                            boxShadow: [
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),spreadRadius: 1,blurRadius: 2),
                              BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),spreadRadius: 1,blurRadius: 2),
                            ]
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Usage Storage',
                                style: TextStyle(
                                  color: blueColor,
                                  fontSize: 9.sp,
                                ),
                              ),
                              SizedBox(height: 0.5.h,),
                              RichText(
                                  text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '2MB',
                                          style: TextStyle(
                                            color: redColor,
                                            fontSize: 8.sp,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '/250MB',
                                          style: TextStyle(
                                            color: blueColor,
                                            fontSize: 8.sp,
                                          ),
                                        )
                                      ]
                                  )
                              ),
                              Divider(thickness: 1,color: Colors.grey,),
                              Center(child: Image(image: AssetImage('assets/images/blue_circle.png'),height: 10.h,)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'June 27,2024',
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      Padding(
                        padding:  EdgeInsets.only(left: 2.w, right: 5.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Storage usage',
                                  style: TextStyle(
                                      fontSize: 9.sp,
                                      color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 1.h,),
                                Text(
                                  '22.82MB',
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Products',
                                  style: TextStyle(
                                    fontSize: 9.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 1.h,),
                                Text(
                                  '12/250',
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Pages',
                                  style: TextStyle(
                                    fontSize: 9.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 1.h,),
                                Text(
                                  '1',
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Scan your site',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Center(
                          child: Image(
                              image: AssetImage('assets/images/scaan.png'),
                            height: 23.h,
                          )
                      ),
                      //SizedBox(height: 1.h,),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: redColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 0.7.h),
                            child: Text(
                              'Download',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.sp
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
          ],
        ),
      ),
    );
  }
}
