import 'package:dial_box_updated/custom_widgets/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:sizer/sizer.dart';

import '../account_screen/account_scrreen.dart';
import '../delivery_screens/delivery_main_screen.dart';
import '../home_screen/home_screen.dart';
import '../order_screens/order_screen.dart';
import '../product_screens/product_screen.dart';


PersistentTabController? persistentcontroller;
bool selectHome = true;

class BottomSheetScreen extends StatefulWidget {
  final int? index;
   BottomSheetScreen({Key? key, this.index = 0}) : super(key: key);

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {

  @override
  void initState() {
    persistentcontroller = PersistentTabController(initialIndex: widget.index!);
    super.initState();
  }
  bool? reel_active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding:  EdgeInsets.only(left: 6.w),
          child: SvgPicture.asset('assets/svgs/menu.svg',),
        ),
        leadingWidth: 12.w,
        title: Image(image: AssetImage('assets/images/app_logo.png'),height: 4.h,),
        centerTitle: true,
      ),
      body: PersistentTabView.custom(
        context,
        itemCount: 5,
        backgroundColor: blueColor,
        controller: persistentcontroller,
        selectedTabScreenContext: (context) {},
        screens: _buildScreens(),
        confineInSafeArea: true,
        //bottomScreenMargin: 0,
        //backgroundColor: Colors.transparent,
        onWillPop: (v) async {
          return true;
        },
        handleAndroidBackButtonPress: true,
        //resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
        ),
        customWidget: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: CustomNavBarWidget(
            items: _navBarsItems(),
            selectedIndex: persistentcontroller!.index,
            onItemSelected: (v) {
              persistentcontroller!.index = v;
              setState(() {});
            },
          ),
        ),
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      OrderScreen(),
      ProductScreen(),
      DeliveryMainScreen(),
      AccountScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: SizedBox(
            height: 5.h,
            child: SvgPicture.asset(
              'assets/svgs/homee.svg',
            ),
          ),
          inactiveIcon: SizedBox(
            height: 5.h,
            child: SvgPicture.asset(
              'assets/svgs/homee.svg',
              color: Colors.white,
            ),
          ),
          activeColorPrimary: Colors.white,
          //inactiveColorPrimary: Colors.white
      ),
      PersistentBottomNavBarItem(
          icon: SizedBox(
            child: SvgPicture.asset(
              'assets/svgs/Order.svg',
            ),
            height: 5.h,

          ),
          inactiveIcon: SizedBox(
            child: SvgPicture.asset(
              'assets/svgs/Order.svg',
              color: Colors.white,
            ),
            height: 5.h,
          ),
          activeColorPrimary: Colors.white,
         // inactiveColorPrimary: Colors.grey
      ),
      PersistentBottomNavBarItem(
          icon: SizedBox(
            child: SvgPicture.asset('assets/svgs/Product.svg'),
            height: 5.h,
          ),
          inactiveIcon: SizedBox(
            child: SvgPicture.asset('assets/svgs/Product.svg',color: Colors.white,),
            height: 5.h,
          ),
          activeColorPrimary: Colors.white,
         // inactiveColorPrimary: Colors.white
      ),
      PersistentBottomNavBarItem(
          icon: SizedBox(
            child: SvgPicture.asset('assets/svgs/Delivery.svg'),
            height: 5.h,
          ),
          inactiveIcon: SizedBox(
            child: SvgPicture.asset('assets/svgs/Delivery.svg',color: Colors.white,),
            height: 5.h,
          ),
          activeColorPrimary: Colors.white,
          //inactiveColorPrimary: Colors.white
      ),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/Account.svg',
            height: 5.h,

          ),
          inactiveIcon: SvgPicture.asset(
            'assets/svgs/Account.svg',
            height: 5.h,
            color: Colors.white,
            //color: Colors.grey,
          ),
          //activeColorPrimary: Colors.white,
          //inactiveColorPrimary: Colors.white
      ),
    ];
  }

}

class CustomNavBarWidget extends StatelessWidget {
  final int? selectedIndex;
  final List<PersistentBottomNavBarItem>? items;
  final ValueChanged<int>? onItemSelected;

  CustomNavBarWidget({
    Key? key,
    this.selectedIndex,
    @required this.items,
    this.onItemSelected,
  });

  Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Flexible(
            child: IconTheme(
              data: IconThemeData(
                  size: 26.0,
                  color: isSelected
                      ? (item.activeColorSecondary == null
                      ? item.activeColorPrimary
                      : item.activeColorSecondary)
                      : item.inactiveColorPrimary == null
                      ? item.activeColorPrimary
                      : item.inactiveColorPrimary),
              child: !isSelected ? item.icon : item.inactiveIcon!,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              this.onItemSelected!(0);
            },
            child: _buildItem(items![0], selectedIndex == 0),
          ),
          GestureDetector(
            onTap: () {
              this.onItemSelected!(1);
            },
            child: _buildItem(items![1], selectedIndex == 1),
          ),
          GestureDetector(
            onTap: () {
              this.onItemSelected!(2);
            },
            child: _buildItem(items![2], selectedIndex == 2),
          ),
          GestureDetector(
            onTap: () {
              this.onItemSelected!(3);
            },
            child: _buildItem(items![3], selectedIndex == 3),
          ),
          GestureDetector(
            onTap: () {
              this.onItemSelected!(4);
            },
            child: _buildItem(items![4], selectedIndex == 4),
          )
        ],
      ),
    );
  }
}
