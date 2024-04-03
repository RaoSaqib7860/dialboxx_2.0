//import 'package:dial_box/view/screens/edit_product/edit_product_screen/pricing_screen.dart';
import 'package:dial_box_updated/custom_widgets/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

//import '../category_screen/category_screen.dart';
import 'edit_product_screen/checkout_screen.dart';
import 'edit_product_screen/files_screen.dart';
import 'edit_product_screen/image_screen.dart';
import 'edit_product_screen/inventory_screen.dart';
import 'edit_product_screen/option_screen.dart';
import 'edit_product_screen/pricing_screen.dart';
import 'edit_product_screen/product_screen.dart';
import 'edit_product_screen/seo_screen.dart';
import 'edit_product_screen/variants_screen.dart';

class EditProductScreen extends StatefulWidget {
  const EditProductScreen({Key? key}) : super(key: key);

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  //late TabController _controller;
  int index = 1;

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = TabController(length: 9, vsync: this);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   leading: GestureDetector(onTap: () => Navigator.pop(context),child: Icon(Icons.arrow_back_ios_new,color: Colors.blue,)),
      //   title: Text('Dial Box',style: TextStyle(color: Colors.blue),),
      //   centerTitle: true,
      //   elevation: 0,
      //   actions: [
      //     Padding(
      //       padding:  EdgeInsets.only(right: 3.w),
      //       child: Container(
      //         height: 7.h,
      //         width: 7.w,
      //         decoration: BoxDecoration(
      //             color: Colors.blue,
      //             shape: BoxShape.circle
      //         ),
      //         child: Center(child: Icon(Icons.person,color: Colors.white,)),
      //       ),
      //     )
      //   ],
      // ),
      body: Column(
        children: [
          Container(
            height: 7.h,
            color: blueColor,
            child: Center(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3.w),
                      child: SvgPicture.asset('assets/svgs/back_arrow.svg',height: 2.h,),
                    ),
                  ),
                  SizedBox(width: 28.w,),
                  Text(
                    'Edit Product',
                    style: TextStyle(color: Colors.white,fontSize: 13.sp),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 2.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w),
            child: Container(
              height: 3.4.h,
              //color: Colors.white,
              child: Padding(
                padding:  EdgeInsets.only(top: 0.4,bottom: 0.4),
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
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: index == 1 ? blueColor : Colors.black,width: 1)
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.6.w,vertical: 0.7.h),
                          child: Text(
                            'Product',
                            style: TextStyle(color: index == 1?Colors.white : Color(0xff404040),fontSize: 9.sp),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.5.w,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 2;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: index == 2 ? blueColor : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: index == 2 ? blueColor : Colors.black,width: 1)
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.6.w,vertical: 0.7.h),
                          child: Text(
                            'Pricing',
                            style: TextStyle(color: index == 2?Colors.white : Color(0xff404040),fontSize: 9.sp),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.5.w,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 3;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: index == 3 ? blueColor : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: index == 3 ? blueColor : Colors.black,width: 1)
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.6.w,vertical: 0.7.h),
                          child: Text(
                            'Image',
                            style: TextStyle(color: index == 3?Colors.white : Color(0xff404040),fontSize: 9.sp),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.5.w,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 4;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: index == 4 ? blueColor : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: index == 4 ? blueColor : Colors.black,width: 1)
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.6.w,vertical: 0.7.h),
                          child: Text(
                            'Option',
                            style: TextStyle(color: index == 4?Colors.white : Color(0xff404040),fontSize: 9.sp),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.5.w,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 5;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: index == 5 ? blueColor : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: index == 5 ? blueColor : Colors.black,width: 1)
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.6.w,vertical: 0.7.h),
                          child: Text(
                            'Variants',
                            style: TextStyle(color: index == 5?Colors.white : Color(0xff404040),fontSize: 9.sp),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.5.w,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 6;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: index == 6 ? blueColor : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: index == 6 ? blueColor : Colors.black,width: 1)
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.6.w,vertical: 0.7.h),
                          child: Text(
                            'Inventory',
                            style: TextStyle(color: index == 6?Colors.white : Color(0xff404040),fontSize: 9.sp),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.5.w,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 7;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: index == 7 ? blueColor : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: index == 7 ? blueColor : Colors.black,width: 1)
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.6.w,vertical: 0.7.h),
                          child: Text(
                            'Files',
                            style: TextStyle(color: index == 7?Colors.white : Color(0xff404040),fontSize: 9.sp),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.5.w,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 8;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: index == 8 ? blueColor : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: index == 8 ? blueColor : Colors.black,width: 1)
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.6.w,vertical: 0.7.h),
                          child: Text(
                            'SEO',
                            style: TextStyle(color: index == 8?Colors.white : Color(0xff404040),fontSize: 9.sp),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.5.w,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 9;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: index == 9 ? blueColor : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: index == 9 ? blueColor : Colors.black,width: 1)
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.6.w,vertical: 0.7.h),
                          child: Text(
                            'Express Checkout',
                            style: TextStyle(color: index == 9?Colors.white : Color(0xff404040),fontSize: 9.sp),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.5.w,),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 2.h,),
          if(index == 1)
            Expanded(child: ProductScreen()),
          if(index == 2)
            Expanded(child: PricingScreen()),
          if(index == 3)
            Expanded(child: ImageScreen()),
          if(index == 4)
            Expanded(child: OptionScreen()),
          if(index == 5)
            Expanded(child: VariantScreen()),
          if(index == 6)
            Expanded(child: InventoryScreen()),
          if(index == 7)
            Expanded(child: FilesScreen()),
          if(index == 8)
            Expanded(child: SEOScreen()),
          if(index == 9)
            Expanded(child: CheckoutScreen())
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     //Navigator.of(context).push(MaterialPageRoute(builder: (context) => CategoryScreen(),));
      //   },
      // ),
    );
  }
}
