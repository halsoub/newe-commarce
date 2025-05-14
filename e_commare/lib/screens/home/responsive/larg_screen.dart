import 'package:e_commare/screens/home/widgets/appbar.dart';
import 'package:e_commare/screens/home/widgets/category.dart';
import 'package:e_commare/screens/home/widgets/classification.dart';
import 'package:e_commare/screens/home/widgets/flash_sale.dart';
import 'package:e_commare/screens/home/widgets/last_search.dart';
import 'package:e_commare/screens/home/widgets/recomended_product.dart';
import 'package:e_commare/screens/home/widgets/trending_product.dart';
import 'package:flutter/material.dart';

class LargScreen extends StatelessWidget {
  const LargScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Row(
            children: [
              Expanded(flex: 2, child: MyAppbar()),
              Expanded(flex: 2, child: Classification()),
              Expanded(flex: 2, child: FlashSale()),
              Expanded(flex: 1, child: TrendingProduct()),
              Expanded(flex: 2, child: LastSearch()),
              Expanded(flex: 1, child: Category()),
              Expanded(flex: 2, child: RecomendedProduct()),
            ],
          ),
        ),
      ),
    );
  }
}
