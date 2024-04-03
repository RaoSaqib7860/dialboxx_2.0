
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../custom_widgets/app_colors.dart';
import '../../../../../custom_widgets/custom_line_textfield.dart';

class InventoryScreen extends StatefulWidget {
  final int? index;
  const InventoryScreen({this.index,Key? key}) : super(key: key);

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  TextEditingController nameController = TextEditingController();
  var items = [
    'Don\'t need to manage stock',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue = 'Don\'t need to manage stock';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: CustomLineTextField(name: 'SKU',hint: '#ABC-123',controller: nameController),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: Text(
                  'Manage Stock',
                  style: TextStyle(color: Colors.black,fontSize: 10.sp),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: DropdownButton(
                  isExpanded: true,
                  value: dropdownvalue,
                  icon: Icon(Icons.keyboard_arrow_down_outlined,size: 3.h,color: Colors.black,),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items,style: TextStyle(color: Colors.grey,fontSize: 11.sp),),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                  hint:  Text(
                    "Font Family",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 2.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
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
            ],
          ),
        ),
      ),
    );
  }
}
