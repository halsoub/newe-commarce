import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/models/last_search.dart';
import 'package:flutter/material.dart';

class LastSearch extends StatefulWidget {
  const LastSearch({super.key});

  @override
  State<LastSearch> createState() => _LastSearchState();
}

class _LastSearchState extends State<LastSearch> {
  final List<LastSearchModel> _lastSearch = [];
  void initState() {
    LastSearchModel search = LastSearchModel(
      "Delta Boot import 8 inch",
      "\$18.3",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/25.jpg",
      212,
    );
    LastSearchModel search1 = LastSearchModel(
      "Fimix8 SE Black",
      "\$ 65.3",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/26.jpg",
      63,
    );
    LastSearchModel search2 = LastSearchModel(
      "Guess Collection Watch Ceramic type Gc",
      "\$ 125.36",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/27.jpg",
      7,
    );
    LastSearchModel search3 = LastSearchModel(
      "Adidas Football Predator 19.3FG F35594",
      "\$ 498.4",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/32.jpg",
      30,
    );
    LastSearchModel search4 = LastSearchModel(
      "New Original Apple TV 4K 64Gb 5th Generation ",
      "\$ 173.3",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/29.jpg",
      98,
    );
    LastSearchModel search5 = LastSearchModel(
      "SAMSUNG GALAXY S20 Plus RAM 8/128GB ",
      "\$ 173.3",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/30.jpg",
      14,
    );
    LastSearchModel search6 = LastSearchModel(
      "Changhong Google certified Android Smart TV 321 inch 32H4 LED ",
      "\$ 129.3",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/31.jpg",
      701,
    );
    _lastSearch.add(search);
    _lastSearch.add(search1);
    _lastSearch.add(search2);
    _lastSearch.add(search3);
    _lastSearch.add(search4);
    _lastSearch.add(search5);
    _lastSearch.add(search6);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkWhite,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Last Search",
                  style: TextStyle(fontSize: fontmd, fontWeight: FontWeight.w600, color: black),
                ),

                Text("view all", style: TextStyle(color: green, fontWeight: FontWeight.w700)),
              ],
            ),
            Container(
              height: height * 0.3,
              width: width,
              color: darkWhite,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder:
                    (context, index) => Column(
                      children: [
                        Container(
                          height: height * 0.3 - 10,
                          width: width * 0.40,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(3.0, 3.0),
                                spreadRadius: 1,
                                blurRadius: 1,
                              ),
                            ],
                            color: white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: height * 0.18,
                                width: width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadiusDirectional.only(
                                    topStart: Radius.circular(10),
                                    topEnd: Radius.circular(10),
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage(_lastSearch[index].image!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _lastSearch[index].name,
                                      style: TextStyle(color: black),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      _lastSearch[index].price,
                                      style: TextStyle(color: black, fontWeight: FontWeight.w600),
                                    ),

                                    Row(
                                      children: [
                                        ...List.generate(
                                          5,
                                          (index) => Icon(Icons.star, color: orange, size: fontmd),
                                        ),
                                        Text(
                                          "(${_lastSearch[index].rating})",
                                          style: TextStyle(color: lightGray, fontSize: fontxs),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                itemCount: _lastSearch.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
