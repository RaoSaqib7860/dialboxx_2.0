import 'package:dial_box_updated/view/screens/auth_screens/login_screen/Login%20Provider/login_provider.dart';
import 'package:dial_box_updated/view/screens/auth_screens/signup_detail_screen/SignUp%20Provider/sign_up_provider.dart';
import 'package:dial_box_updated/view/screens/workthrough_screen/workthrough_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => LoginProvider()),
      ChangeNotifierProvider(create: (_) => SignUpProvider()),
    ],
    child: const MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  WalkthroughScreen(),
        //SplashScreen(),
        debugShowCheckedModeBanner: false,
      );
    },);
  }
}


