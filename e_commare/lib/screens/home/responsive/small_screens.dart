import 'package:e_commare/screens/home/widgets/appbar.dart';
import 'package:e_commare/screens/home/widgets/category.dart';
import 'package:e_commare/screens/home/widgets/classification.dart';
import 'package:e_commare/screens/home/widgets/flash_sale.dart';
import 'package:e_commare/screens/home/widgets/last_search.dart';
import 'package:e_commare/screens/home/widgets/recomended_product.dart';
import 'package:e_commare/screens/home/widgets/trending_product.dart';
import 'package:flutter/material.dart';

class SmallScreens extends StatelessWidget {
  const SmallScreens({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height * 0.35, width: width, child: MyAppbar()),
              SizedBox(width: width, height: height * 0.4, child: Classification()),
              SizedBox(height: height * 0.4, width: width, child: FlashSale()),
              SizedBox(height: height * 0.31, width: width, child: TrendingProduct()),
              SizedBox(height: height * 0.4, width: width, child: LastSearch()),
              SizedBox(height: height * 0.35, width: width, child: Category()),
              SizedBox(height: height, width: width, child: RecomendedProduct()),
            ],
          ),
        ),
      ),
    );
  }
}
