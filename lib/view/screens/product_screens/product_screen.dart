import 'package:dial_box_updated/view/screens/product_screens/publish_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../custom_widgets/app_colors.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  var items = [
    'All Products',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue = 'All Products';
  int index = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 8.h,
            width: 100.w,
            color: blueColor,
            child: Center(
              child: Text(
                'Products',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),
          SizedBox(height: 1.h,),
          Center(
            child: Container(
              height: 4.h,
              width: 45.w,
              decoration: BoxDecoration(
                color: blueColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Padding(
                  padding:  EdgeInsets.only(left: 5.w,right: 3.w),
                  child: DropdownButton(
                    isExpanded: true,
                    style: TextStyle(color: Colors.white,fontSize: 10.sp),
                    icon: Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white,size: 2.5.h,),
                    underline: Container(),
                    value: dropdownvalue,
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Padding(
                          padding:  EdgeInsets.only(left: 4.w),
                          child: Text(items,style: TextStyle(color: Colors.white,fontSize: 10.sp),),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                        // switch(newValue){
                        //   case 'Item 2':
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CreateAttributesScreen()),
                        //     );
                        //     break;
                        // }
                      });
                    },
                    hint:  Text(
                      "Font Family",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 1.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w),
            child: Container(
              height: 3.2.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: index == 1 ? blueColor : Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: index == 1 ? blueColor : Colors.black,width: 1)
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.6.h),
                        child: Text(
                          'Publish (1)',
                          style: TextStyle(color: index == 1 ? Colors.white : Colors.black,fontSize: 10.sp),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w,),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: index == 2 ? blueColor : Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: index == 2 ? blueColor : Colors.black,width: 1)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.6.h),
                        child: Text(
                          'Draft (11)',
                          style: TextStyle(color:  index == 2 ? Colors.white : Colors.black,fontSize: 10.sp,),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w,),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 3;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: index == 3 ? blueColor : Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: index == 3 ? blueColor : Colors.black,width: 1)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.6.h),
                        child: Text(
                          'Incomplete (1)',
                          style: TextStyle(color: index == 3 ? Colors.white : Colors.black,fontSize: 10.sp),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w,),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 4;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: index == 4 ? blueColor : Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: index == 4 ? blueColor : Colors.black,width: 1)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.6.h),
                        child: Text(
                          'Trash (1)',
                          style: TextStyle(color: index == 4 ? Colors.white : Colors.black,fontSize: 10.sp),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 2.h,),
          if(index==1)
          Expanded(
              child: PublishScreen()
          )
        ],
      ),
    );
  }
}
