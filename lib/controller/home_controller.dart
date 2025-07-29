import 'dart:convert';

import 'package:ecommerce_v1/data/model/productsmodel.dart';
import 'package:get/get.dart';
import 'package:get/get.dart' as http;
import 'package:http/http.dart';

import '../core/class/statusrequest.dart';
import '../core/functions/handingdatacontroller.dart';
import '../data/datasource/remote/home_data.dart';

abstract class HomeController extends GetxController {
  // initialData();
  getdata();
}

class HomeControllerImp extends HomeController {
  // MyServices myServices = Get.find();
  //  String? username;
  //  String? id;

  HomeData homedata = HomeData(Get.find());

  // List data = [];
  List categories = [];
  // List items = [];

  late StatusRequest statusRequest;

  /*  @override
  initialData() {
     username = myServices.sharedPreferences.getString("username");
     id = myServices.sharedPreferences.getString("id");
  } */

  @override
  void onInit() {
    // initialData();
    getdata();

    super.onInit();
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homedata.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}
