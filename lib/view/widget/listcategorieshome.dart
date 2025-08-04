//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';
import '../../controller/homescreen_cntrl.dart';
import '../../core/constant/color.dart';
import '../../data/model/categoriesmodel.dart';
import '../../data/model/productsmodel.dart';
import '../../linkapi.dart';
import '../screen/ProductDetails1.dart';
import '../screen/productdetails.dart';
/* 
class ListCategoriesHome extends GetView<HomeController> {
  const ListCategoriesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: 
      ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: /* 18,  */controller.productsModel?.products?.length ?? 0,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return
          Categories(
            ProductsModel.fromJson(
              controller.categories[index],
            ),
          );
          /* Row(
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
                    child: // Image.asset("assets/images/1.png"),
                    /*  SvgPicture.network(
                "${AppLink.imagestCategories}/${categoriesModel.categoriesImage}",
                color: AppColor.secondColor,
              ), */
                    SvgPicture.network(
                      "${controller.productsModel!.products![index].thumbnail}",
                      color: AppColor.secondColor,
                    ),
                  ),
                  //SizedBox(height: 7),
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
          ); */
        },
      ),
    );
  }
}

class Categories extends GetView<HomescreenCntrl> {
  final CategoriesModel? categoriesModel;
  const Categories(ProductsModel productsModel, {Key? key, this.categoriesModel, required ProductsModel productsModel}) : super(key: key);

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
              child: // Image.asset("assets/images/1.png"),
              /*  SvgPicture.network(
                "${AppLink.imagestCategories}/${categoriesModel.categoriesImage}",
                color: AppColor.secondColor,
              ), */
              SvgPicture.network(
                "${controller.productsModel!.products![0].thumbnail}",
                color: AppColor.secondColor,
              ),
            ),
            //SizedBox(height: 7),
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

 */
////////////////
///////////////

class ListCategoriesHome extends GetView<HomeControllerImp> {
  const ListCategoriesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: controller.productsModel?.products?.length ?? 0,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final product = controller.productsModel!.products![index];
          List<Products> product1 = controller.productsModel!.products!;

          return Categories(product: product, product1: product1, index: index);
        },
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final Products product; // هنا غيرت النوع من Product إلى Products
  final List<Products> product1;
  final int index;
  const Categories({
    Key? key,
    required this.product,
    required this.product1,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => ProductDetails1(product1: product1, index: index));
      },
      child: Row(
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
                child: SvgPicture.network(
                  // product.thumbnail ?? "",
                  //   null الأفضل استخدام  " "??  أو صورة افتراضية إذا كان هناك احتمال أن تكون القيمة .
                  // مثال توضيحي
                  // String? x = null;
                  // print(x ?? "");        // الناتج: ""
                  // print(x.toString());   // الناتج: "null"
                  product1[index].thumbnail ??
                      "https://your-default-image-url.com/default.png",
                  color: AppColor.secondColor,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                //
                //   null الأفضل استخدام  " "??  أو صورة افتراضية إذا كان هناك احتمال أن تكون القيمة .
                product1[index].title ?? "",
                style: const TextStyle(fontSize: 13, color: AppColor.black),
              ),
              SizedBox(height: 7),
              Text(
                product1[index].description ?? "",
                style: const TextStyle(fontSize: 13, color: AppColor.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
