import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../custom_widgets/app_colors.dart';
import '../../../../../custom_widgets/custom_line_textfield.dart';


class PricingScreen extends StatefulWidget {
  final int? index;
  const PricingScreen({this.index,Key? key}) : super(key: key);

  @override
  State<PricingScreen> createState() => _PricingScreenState();
}

class _PricingScreenState extends State<PricingScreen> {
  TextEditingController priceController = TextEditingController();
  TextEditingController regPriceController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController sDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
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
                CustomLineTextField(name: 'Current Price',hint: '3500',controller: priceController),
                CustomLineTextField(name: 'Regular Price',hint: '4000',controller: regPriceController),
                //SizedBox(height: 2.h,),
                Padding(
                  padding:  EdgeInsets.only(left: 4.w,right: 4.w),
                  child: Text(
                    'Discount Type',
                    style: TextStyle(color: Colors.black,fontSize: 10.sp),
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
                SizedBox(height: 2.h,),
                CustomLineTextField(name: 'Discounted Price',hint: '500',controller: discountController),
                CustomLineTextField(name: 'Special Price Start',hint: 'Date',controller: sDateController),
                CustomLineTextField(name: 'Special Price End',hint: 'Date',controller: endDateController),
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
                //SizedBox(height: 4.h,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
