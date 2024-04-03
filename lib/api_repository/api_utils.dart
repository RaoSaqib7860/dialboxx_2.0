import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../view/screens/auth_screens/login_screen/Model/login_model.dart';
import 'base_path.dart';

class DataProvider{

  Future loginFunction({Map<String , dynamic>? map}) async {
    //String? deviceId = await getId();
    LoginModel? loginModel = LoginModel();
    final response = await http.post(Uri.parse('$baseURL$userLogin'), body: map,headers: {
      'csrf' : '5574499YmRzanYyZzExa2J3Y3N1b2Y='
    });
    var data = jsonDecode(response.body);
    if (data['result'] == 'success') {
      loginModel = LoginModel.fromJson(data);
      log("loginFunction code is = ${response.statusCode}");
      // user_model = LoginModel.fromJson(data);
      // storage.write('userData', user_model.toJson());
      // snackBarFailer('${data['message']}');
      Get.snackbar('Success','${data['message']}');
      return loginModel;
    }else{
      Get.snackbar('Alert','${data['message']}');
      return null;
    }
  }

  Future signUpApi({Map<String , dynamic>? map}) async {
    //String? deviceId = await getId();
   // LoginModel? loginModel = LoginModel();
    print('map is === $map');
    final response = await http.post(Uri.parse('$baseURL$signupUrl'), body: map,headers: {
      'csrf' : '5574499YmRzanYyZzExa2J3Y3N1b2Y='
    });
    var data = jsonDecode(response.body);
    if (data['result'] == 'Success') {
      //loginModel = LoginModel.fromJson(data);
      log("loginFunction code is = ${response.statusCode}");
      // user_model = LoginModel.fromJson(data);
      // storage.write('userData', user_model.toJson());
      // snackBarFailer('${data['message']}');
      Get.snackbar('Success','${data['message']}');
      return true;
    }else{
      Get.snackbar('Alert','${data['message']}');
      return null;
    }
  }

}