import 'dart:convert';

import 'package:ecommerce_v1/data/model/productsmodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

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
