import 'dart:convert';

import 'package:dartz/dartz_streaming.dart';
import 'package:ecommerce_v1/data/model/productsmodel.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../core/functions/checkinternet.dart';

import '../core/functions/checkinternet.dart';

class HomescreenCntrl extends GetxController {
  @override
  void onInit() {
    getdata();

    super.onInit();
  }

  ProductsModel? productsModel;

  getdata() async {
    http.Response response = await http.get(
      Uri.parse("https://jsonexamples.com/products"),
    );
    Map<String, dynamic> data = jsonDecode(response.body);

    productsModel = ProductsModel.fromJson(data);

    print(productsModel!.products![0].title);
    update();
  }
}

/* class HomescreenCntrl extends GetxController {
  ProductsModel? productsModel;

  @override
  void onInit() {
    getdata();
    super.onInit();
  }

  getdata() async {
    if (!await checkInternet()) {
      print("لا يوجد اتصال بالإنترنت");
      // يمكنك هنا عرض رسالة أو تحديث واجهة المستخدم حسب رغبتك
      return;
    }

    http.Response response = await http.get(
      Uri.parse("https://jsonexamples.com/products"),
    );
    Map<String, dynamic> data = jsonDecode(response.body);

    productsModel = ProductsModel.fromJson(data);

    print(productsModel!.products![0].title);
    update();
  }
} */

/*
import 'dart:convert';
import 'package:ecommerce_v1/data/model/productsmodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../core/functions/checkinternet.dart';
import '../core/class/statusrequest.dart';

class HomescreenCntrl extends GetxController {
  ProductsModel? productsModel;
  late StatusRequest statusRequest;

  @override
  void onInit() {
    getdata();
    super.onInit();
  }

   getdata() async {
    statusRequest = StatusRequest.loading;
    update();

    if (!await checkInternet()) {
      statusRequest = StatusRequest.offlinefailure;
      update();
      return;
    }

    try {
      http.Response response = await http.get(
        Uri.parse("https://jsonexamples.com/products"),
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        productsModel = ProductsModel.fromJson(data);
        statusRequest = StatusRequest.success;
      } else {
        statusRequest = StatusRequest.serverfailure;
      }
    } catch (e) {
      statusRequest = StatusRequest.serverfailure;
    }
    update();
  }
} */
