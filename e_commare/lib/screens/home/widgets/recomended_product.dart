import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/models/recomended.dart';
import 'package:flutter/material.dart';

class RecomendedProduct extends StatefulWidget {
  const RecomendedProduct({super.key});

  @override
  State<RecomendedProduct> createState() => _RecomendedProductState();
}

class _RecomendedProductState extends State<RecomendedProduct> {
  List<Recomended> _recommended = [];

  Recomended item1 = Recomended(
    "Asus Rog Phone 3 Rogphone lll Ram 12Gb 512Gb Snapdragon 864+ Plus",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/48.jpg",
    "\$1,152",
    "Brooklyn",
    "2",
    "1",
  );
  Recomended item2 = Recomended(
    "Garmin Instinc Tactical - Black",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/47.jpg",
    "\$290",
    "Brooklyn",
    "23",
    "13",
  );
  Recomended item3 = Recomended(
    "Ipad Pro 2020 11 inch 128GB Wi-Fi Only Silver",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/49.jpg",
    "\$ 866",
    "Brooklyn",
    "468",
    "22",
  );
  Recomended item4 = Recomended(
    "Folding Bike 20 GENIO BY United Bike",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/50.jpg",
    "\$172",
    "Brooklyn",
    "23",
    "9",
  );
  Recomended item5 = Recomended(
    "IWO 8 Smart App iWatch Mirror For Android iPhon ",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/46.jpg",
    "\$52",
    "Brooklyn",
    "62",
    "42",
  );
  Recomended item6 = Recomended(
    "New imac 2017 MNEA 5K retina/ 3.5GHZ/i5/8Gy",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/44.jpg",
    "\$1,652",
    "Brooklyn",
    "9",
    "2",
  );
  Recomended item7 = Recomended(
    "XBOX 360 SLIM 500 GB RCH FULL GAME & KINECT ",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/51.jpg",
    "\$182",
    "Brooklyn",
    "9",
    "2",
  );
  Recomended item8 = Recomended(
    "TP-Link TL-WR840N (V40):300Mbps TPLink WiFi Wireless N Router",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/54.jpg",
    "\$11",
    "Brooklyn",
    "245",
    "1075",
  );
  @override
  void initState() {
    _recommended.add(item5);
    _recommended.add(item6);
    _recommended.add(item7);
    _recommended.add(item8);
    _recommended.add(item1);
    _recommended.add(item2);
    _recommended.add(item3);
    _recommended.add(item4);
    _recommended.add(item8);
    _recommended.add(item1);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkWhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          height: height,
          width: width,
          color: darkWhite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Recomended Product",
                style: TextStyle(fontSize: fontmd, fontWeight: FontWeight.w600, color: black),
              ),
              Expanded(
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.6,
                    crossAxisSpacing: 8,
                  ),
                  itemBuilder:
                      (context, index) => Center(
                        child: Container(
                          width: width * 0.5,
                          height: height * 0.38,

                          decoration: BoxDecoration(
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(3.0, 3.0),
                                spreadRadius: 1,
                                blurRadius: 1,
                              ),
                            ],

                            borderRadius: BorderRadius.circular(10),
                          ),
                          // margin: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Container(
                                height: height * 0.18,
                                width: width * 0.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadiusDirectional.only(
                                    topStart: Radius.circular(10),
                                    topEnd: Radius.circular(10),
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage(_recommended[index].image!),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),

                              Text(
                                _recommended[index].name!,
                                style: TextStyle(fontSize: fontsm, color: lightBlack),
                                overflow: TextOverflow.clip,
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _recommended[index].price!,
                                    style: TextStyle(
                                      fontSize: fontsm,
                                      color: black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    " ${_recommended[index].sale!}Sale ",
                                    style: TextStyle(fontSize: fontxs, color: lightGray),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.place, color: lightGray, size: fontxs),
                                  Text(
                                    " ${_recommended[index].location!} ",
                                    style: TextStyle(fontSize: fontsm, color: lightGray),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  ...List.generate(
                                    5,
                                    (index) => Icon(Icons.star, color: orange, size: fontmd),
                                  ),
                                  Text(
                                    "(${_recommended[index].rating})",
                                    style: TextStyle(fontSize: fontxs, color: lightGray),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                  itemCount: _recommended.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
