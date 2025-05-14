import 'package:e_commare/constants/constants.dart';
import 'package:flutter/material.dart';

class TrendingProduct extends StatefulWidget {
  const TrendingProduct({super.key});

  @override
  State<TrendingProduct> createState() => _TrendingProductState();
}

class _TrendingProductState extends State<TrendingProduct> {
  List<Map<String, String>> _trendingProduct = [
    {
      "image": "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/21.jpg",
      "title": "Adidas Shirt",
      "rating": "12.7K Product",
    },
    {
      "image": "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/22.jpg",
      "title": "iPhone SE2020",
      "rating": "8K Product",
    },
    {
      "image": "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/23.jpg",
      "title": "MacBook Pro",
      "rating": "31.7K Product",
    },
    {
      "image": "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/24.jpg",
      "title": "Gaming Chair",
      "rating": "11.9K Product",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkWhite,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 3.0),
              child: Text(
                "Trending Product",
                style: TextStyle(fontSize: fontmd, fontWeight: FontWeight.w600, color: black),
              ),
            ),
            Container(
              height: height * 0.25,
              width: width,
              color: darkWhite,
              padding: EdgeInsets.all(4),

              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  // mainAxisSpacing: 10,
                  childAspectRatio: (height - kToolbarHeight * 0.15) / width,
                ),
                itemCount: _trendingProduct.length,
                itemBuilder:
                    (context, index) => Center(
                      child: Container(
                        width: width * 0.55,
                        height: height * 0.09,
                        padding: EdgeInsets.only(left: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: white,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: height * 0.1,
                              width: width * 0.13,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(_trendingProduct[index]["image"]!),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    _trendingProduct[index]["title"]!,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      color: black,
                                      fontSize: fontsm,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    _trendingProduct[index]["rating"]!,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(color: lightGray, fontSize: fontxs),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
