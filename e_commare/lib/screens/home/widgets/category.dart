import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/screens/home/widgets/sub_category.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkWhite,
      body: Container(
        width: width,
        height: height * 0.3,
        child: Row(
          children: [
            SizedBox(
              height: height - 10,
              width: width * 0.3,

              child: Image.network(
                "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/category_for_you/1.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: height * 0.15,
                      width: width * 0.35,
                      child: Image.network(
                        "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/category_for_you/2.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.15,
                      width: width * 0.35,
                      child: Image.network(
                        "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/category_for_you/3.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: height * 0.15,
                      width: width * 0.35,
                      child: Image.network(
                        "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/category_for_you/4.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.15,
                      width: width * 0.35,
                      child: Image.network(
                        "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/category_for_you/5.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
