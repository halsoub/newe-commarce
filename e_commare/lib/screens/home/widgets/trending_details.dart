import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/models/recomended.dart';
import 'package:flutter/material.dart';

class Trending extends StatefulWidget {
  const Trending({super.key, required this.title});
  final String title;

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
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
      appBar: AppBar(backgroundColor: white, title: Text(widget.title)),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          width: width,
          height: height,
          color: const Color.fromRGBO(240, 240, 240, 1),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _recommended.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(5),
                width: width * 0.5,
                height: height * 0.55,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: height * 0.18,
                          width: width * 0.45,
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
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
