import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/screens/home/widgets/coupons.dart';
import 'package:e_commare/screens/home/widgets/sub_category.dart';
import 'package:flutter/material.dart';

class Classification extends StatefulWidget {
  const Classification({super.key});

  @override
  State<Classification> createState() => _ClassificationState();
}

class _ClassificationState extends State<Classification> {
  List<Map<String, String>> _classification = [
    {
      "classification": "Fashion",
      "image":
          "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/category/fashion.png",
    },
    {
      "classification": "Smart&\n Tablets",
      "image":
          "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/category/smartphone.png",
    },
    {
      "classification": "Electronic",
      "image":
          "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/category/electronic.png",
    },
    {
      "classification": "Otomotif",
      "image":
          "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/category/otomotif.png",
    },
    {
      "classification": "Sport",
      "image":
          "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/category/sport.png",
    },
    {
      "classification": "Food",
      "image": "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/category/food.png",
    },
    {
      "classification": "Voucher\n  Game",
      "image":
          "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/category/voucher_game.png",
    },
    {
      "classification": "Health",
      "image":
          "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/category/health.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkWhite,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Coupon()));
              },
              child: Container(
                height: height * 0.06,
                width: width * 0.9,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(color: blue, borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "There are 10 coupon waiting",
                      style: TextStyle(color: white, fontWeight: FontWeight.w600, fontSize: fontsm),
                    ),
                    Icon(Icons.sell, color: white),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Wrap(
            children: List.generate(
              _classification.length,
              (index) => InkWell(
                onTap: () {
                  if (index == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Fashion(title: "Fashion")),
                    );
                  } else if (index == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Fashion(title: "Smart&Tablets")),
                    );
                  } else if (index == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Fashion(title: "Electronic")),
                    );
                  } else if (index == 3) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Fashion(title: "Otomotif")),
                    );
                  } else if (index == 4) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Fashion(title: "Sport")),
                    );
                  } else if (index == 5) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Fashion(title: "Food")),
                    );
                  } else if (index == 6) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Fashion(title: "Smart&Tablets")),
                    );
                  } else if (index == 7) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Fashion(title: "Voucher Game")),
                    );
                  } else if (index == 8) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Fashion(title: "Health")),
                    );
                  }
                },
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  height: height * 0.14,
                  width: width * 0.2,
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(color: darkWhite),
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.04,
                        width: width * 0.10,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(_classification[index]["image"]!),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02),

                      Center(
                        child: Text(
                          _classification[index]["classification"]!,
                          // overflow: TextOverflow.clip,
                          style: TextStyle(color: black, fontSize: fontsm),
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
    );
  }
}
