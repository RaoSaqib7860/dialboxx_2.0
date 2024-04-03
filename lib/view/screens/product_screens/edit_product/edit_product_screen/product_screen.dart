
import 'package:dial_box_updated/custom_widgets/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../../../custom_widgets/custom_line_textfield.dart';

class ProductScreen extends StatefulWidget {
  final int? index;
  const ProductScreen({this.index,Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController slugController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController featuresController = TextEditingController();
  TextEditingController desController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  bool _value = false;
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue = 'Item 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 2.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomLineTextField(name: 'Product Name',hint: 'Lamp',controller: nameController),
                CustomLineTextField(name: 'Slug',hint: 'Lamp',controller: slugController),
                Padding(
                  padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                  child: Text(
                    'Short Discription',
                    style: TextStyle(color: Colors.black,fontSize: 11.sp),
                  ),
                ),
                SizedBox(height: 0.5.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Container(
                    height: 11.h,
                    width: 88.w,
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      textAlign: TextAlign.left,
                      maxLines: null,
                      expands: true,
                      textAlignVertical: TextAlignVertical.top,
                      style: TextStyle(fontSize: 12.sp),
                      controller: desController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
                        labelStyle: TextStyle(fontSize: 10.sp,color: Colors.grey),
                        hintStyle: TextStyle(fontSize: 10.sp),
                        contentPadding: EdgeInsets.only(top: 1.h,left: 2.w,right: 2.w),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h,),
                Padding(
                  padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                  child: Text(
                    'Product Content',
                    style: TextStyle(color: Colors.black,fontSize: 11.sp),
                  ),
                ),
                SizedBox(height: 0.5.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Container(
                    height: 11.h,
                    width: 88.w,
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      textAlign: TextAlign.left,
                      maxLines: null,
                      expands: true,
                      textAlignVertical: TextAlignVertical.top,
                      style: TextStyle(fontSize: 12.sp),
                      controller: contentController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
                        labelStyle: TextStyle(fontSize: 10.sp,color: Colors.grey),
                        hintStyle: TextStyle(fontSize: 10.sp),
                        contentPadding: EdgeInsets.only(top: 1.h,left: 2.w,right: 2.w),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h,),
                Padding(
                  padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                  child: Text(
                    'Brand',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                  child: DropdownButton(
                    isExpanded: true,
                    value: dropdownvalue,
                    icon: Icon(Icons.keyboard_arrow_down_outlined,color: Colors.black,size: 3.h,),
                    underline: Padding(
                      padding:  EdgeInsets.only(top: 1.h),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items,style: TextStyle(color: Colors.black54),),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                    hint:  Text(
                      "Font Family",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 1.h,),
                CustomLineTextField(name: 'Category',hint: 'None',controller: categoryController),
                CustomLineTextField(name: 'Features',hint: 'None',controller: featuresController),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.h),
                  child: Row(
                    children: [
                      FlutterSwitch(
                        width: 9.w,
                        height: 2.4.h,
                        valueFontSize: 25.0,
                        toggleSize: 16,
                        value: _value,
                        borderRadius: 30.0,
                        padding: 1,
                        showOnOff: false,
                        inactiveColor: Color(0xff505050),
                        onToggle: (val) {
                          setState(() {
                            _value = val;
                          });
                        },
                      ),
                      SizedBox(width: 5.w,),
                      Text(
                          'Published',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Color(0xff4C4C4C)
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 2.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 4.w),
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
      ),
    );
  }
}
