import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/homescreen_cntrl.dart';
import '../../core/constant/color.dart';
import '../widget/customappbar.dart';
import '../widget/customcardhome.dart';

class ListView1 extends StatelessWidget {
  const ListView1({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomescreenCntrl());
    return Scaffold(
      body: GetBuilder<HomescreenCntrl>(
        builder:
            (controller) =>
                controller.productsModel != null
                    ? Column(
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
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: ListView.separated(
                              separatorBuilder:
                                  (context, index) => const SizedBox(width: 10),
                              itemCount: /* 18, */
                                  controller
                                      .productsModel!
                                      .products!
                                      .length, //controller.categories.length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return
                                /* Categories(
                                      /*  categoriesModel: CategoriesModel.fromJson(
                                        controller.categories[index],
                                      ), */
                                    ); */
                                InkWell(
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: AppColor.thirdColor,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10,
                                            ),
                                            height: 100,
                                            width: 100,
                                            child: //Image.asset("assets/images/1.png"),
                                            /*  SvgPicture.network(
                                            "${AppLink.imagestCategories}/${categoriesModel.categoriesImage}",
                                            color: AppColor.secondColor,
                                          ), */
                                            Image.network(
                                              "${controller.productsModel!.products![index].thumbnail}",
                                              color: AppColor.secondColor,
                                              height: 150,
                                              width: 150,
                                            ),
                                          ),
                                          SizedBox(height: 7),
                                          /*   Text(
                                          " Hello static ",
                                          //  "${categoriesModel.categoriesName}",
                                          style: const TextStyle(fontSize: 13, color: AppColor.black),
                                        ), */
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              // " Title ",
                                              //  "${categoriesModel.categoriesName}",
                                              "${controller.productsModel!.products![index].title}",
                                              style: const TextStyle(
                                                fontSize: 16,
                                                color: AppColor.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 3),
                                            Text(
                                              // " Description Hello static ",
                                              "${controller.productsModel!.products![index].description}",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                fontSize: 13,
                                                color: AppColor.black,
                                              ),
                                            ),
                                            SizedBox(height: 3),
                                            Text(
                                              // " Description Hello static ",
                                              "${controller.productsModel!.products![index].price}"
                                              r" $ ",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: AppColor.fourthColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    )
                    : Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
