//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';
import '../../core/constant/color.dart';
import '../../data/model/categoriesmodel.dart';
import '../../linkapi.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {
  const ListCategoriesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: 18, //controller.categories.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Categories(
            /*  categoriesModel: CategoriesModel.fromJson(
              controller.categories[index],
            ), */
          );
        },
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final CategoriesModel? categoriesModel;
  const Categories({Key? key, this.categoriesModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColor.thirdColor,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 70,
              width: 70,
              child: Image.asset("assets/images/1.png"),
              /*  SvgPicture.network(
                "${AppLink.imagestCategories}/${categoriesModel.categoriesImage}",
                color: AppColor.secondColor,
              ), */
            ),
            SizedBox(height: 7),
            /*   Text(
              " Hello static ",
              //  "${categoriesModel.categoriesName}",
              style: const TextStyle(fontSize: 13, color: AppColor.black),
            ), */
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              " Title ",
              //  "${categoriesModel.categoriesName}",
              style: const TextStyle(fontSize: 13, color: AppColor.black),
            ),
            SizedBox(height: 7),
            Text(
              " Description Hello static ",
              //  "${categoriesModel.categoriesName}",
              style: const TextStyle(fontSize: 13, color: AppColor.black),
            ),
          ],
        ),
      ],
    );
  }
}
