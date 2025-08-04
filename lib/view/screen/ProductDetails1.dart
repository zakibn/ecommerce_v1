import 'package:ecommerce_v1/data/model/productsmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductDetails1 extends StatelessWidget {
  List<Products> product1;
  int index;
  ProductDetails1({super.key, required this.product1, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: product1[index].images!.length,
        itemBuilder:
            (BuildContext context, int e) => Text("${product1[index].title}"),
      ),
    );
  }
}
