import 'package:ecommerce_v1/data/model/productsmodel.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  ProductsModel product;
  int index;
  ProductDetails({super.key, required this.product, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("${product.products![index].title}")),
    );
  }
}
