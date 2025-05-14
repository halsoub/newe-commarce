import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/models/recomended.dart';
import 'package:flutter/material.dart';

class LastSeen extends StatefulWidget {
  const LastSeen({super.key});

  @override
  State<LastSeen> createState() => _LastSeenState();
}

class _LastSeenState extends State<LastSeen> {
  List<Recomended> _lastSeen = [];
  Recomended item1 = Recomended(
    "Asus Rog Phone 3 Rogphone lll Ram 12Gb 512Gb Snapdragon 864+",
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
    "TP-Link TL-WR840N (V40):300 Mbps TPLink WiFi Wireless N Router",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/54.jpg",
    "\$11",
    "Brooklyn",
    "245",
    "1075",
  );
  @override
  void initState() {
    _lastSeen.add(item5);
    _lastSeen.add(item6);
    _lastSeen.add(item7);
    _lastSeen.add(item8);
    _lastSeen.add(item1);
    _lastSeen.add(item2);
    _lastSeen.add(item3);
    _lastSeen.add(item4);
    _lastSeen.add(item8);
    _lastSeen.add(item1);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkWhite,
        appBar: AppBar(title: Text("Last Seen Product"), backgroundColor: darkWhite),
        body: Container(
          width: width,
          height: height,
          color: white,
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: height * 0.18,
                  width: width * 0.4,
                  margin: const EdgeInsets.all(2),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: white),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // spacex,
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          width: width * 0.25,
                          height: height * 0.12,
                          _lastSeen[index].image!,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Container(
                          color: white,
                          height: height * 0.2,
                          width: width * 0.6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: height * 0.01),
                              Text(_lastSeen[index].name!, overflow: TextOverflow.clip),
                              Text(
                                _lastSeen[index].price!,
                                style: const TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on, size: fontsm, color: lightGray),
                                  Text(
                                    "Brooklyn",
                                    style: TextStyle(color: lightGray, fontSize: fontxs),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.04,
                                width: height * 0.09,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Icon(Icons.star, size: fontsm, color: Colors.amber);
                                  },
                                  itemCount: 5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: _lastSeen.length,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
          ),
        ),
      ),
    );
  }
}
