import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';
import '../../core/class/handlingdataview.dart';
import '../widget/customappbar.dart';
import '../widget/customcardhome.dart';
import '../widget/listcategorieshome.dart';

/* class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
      body: GetBuilder<HomeControllerImp>(
        builder:
            (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  children: [
                    CustomAppBar(
                      titleappbar: "Find Product",
                      onPressedIcon: () {},
                      onPressedSearch: () {},
                    ),
                    const CustomCardHome(
                      title: "A summer surprise",
                      body: "Cashback 20%",
                    ),
                    const ListCategoriesHome(),
                  ],
                ),
              ),
            ),
      ),
    );
  }
} */

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
      body: GetBuilder<HomeControllerImp>(
        builder:
            (controller) => Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                children: [
                  CustomAppBar(
                    titleappbar: "Find Product",
                    onPressedIcon: () {},
                    onPressedSearch: () {},
                  ),
                  const CustomCardHome(
                    title: "A summer surprise",
                    body: "Cashback 20%",
                  ),
                  const ListCategoriesHome(),
                ],
              ),
            ),
      ),
    );
  }
}
