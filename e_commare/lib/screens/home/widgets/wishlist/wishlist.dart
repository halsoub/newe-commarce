import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/models/recomended.dart';
import 'package:flutter/material.dart';
import 'package:e_commare/screens/home/widgets/recomended_product.dart';

class Wishlist extends StatefulWidget {
  Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  List<Recomended> _wishlist = [];
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
    _wishlist.add(item5);
    _wishlist.add(item6);
    _wishlist.add(item7);
    _wishlist.add(item8);
    _wishlist.add(item1);
    _wishlist.add(item2);
    _wishlist.add(item3);
    _wishlist.add(item4);
    _wishlist.add(item8);
    _wishlist.add(item1);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromRadius(10),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: width,
            color: white,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: darkWhite),
              height: kBottomNavigationBarHeight,
              width: width * 0.85,
              // height: height * 0.05,
              child: Row(
                children: [
                  Icon(Icons.search, color: lightGray),
                  Container(
                    padding: const EdgeInsets.only(top: 12),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                    ),
                    width: width * 0.75,
                    child: TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Search Wishlist",
                        hintStyle: TextStyle(color: lightBlack, fontSize: fontsm),
                        fillColor: darkWhite,
                        filled: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        title: Text("Wishlist", style: TextStyle(fontSize: fontmd, color: black)),
        backgroundColor: white,
        actions: [
          InkWell(
            // onTap: () {
            //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Chat()));
            // },
            child: Icon(Icons.email, color: gray, size: fontlg),
          ),
          Badge(
            backgroundColor: lightRed,
            alignment: AlignmentDirectional.centerEnd,
            label: Text("8"),

            child: IconButton(
              icon: Icon(Icons.notifications, color: gray, size: fontlg),
              onPressed: () {},
            ),
          ),
        ],
      ),
      backgroundColor: darkWhite,
      body: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          // physics: NeverScrollableScrollPhysics(),
          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 1,
          //   mainAxisSpacing: 8,
          //   childAspectRatio: 0.6,
          //   crossAxisSpacing: 4,
          // ),
          itemBuilder:
              (context, index) => Container(
                width: width,
                height: height * 0.28,
                margin: EdgeInsets.all(10),
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
                      children: [
                        Container(
                          height: height * 0.18,
                          width: width * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(10),
                              topEnd: Radius.circular(10),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(_wishlist[index].image!),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: width * 0.65,
                                child: Text(
                                  _wishlist[index].name!,
                                  style: TextStyle(fontSize: fontsm, color: lightBlack),
                                  overflow: TextOverflow.clip,
                                ),
                              ),

                              Text(
                                _wishlist[index].price!,
                                style: TextStyle(
                                  fontSize: fontsm,
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.place, color: lightGray, size: fontsm),
                                  Text(
                                    " ${_wishlist[index].location!} ",
                                    style: TextStyle(fontSize: fontxs, color: lightGray),
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
                                    "(${_wishlist[index].rating})",
                                    style: TextStyle(fontSize: fontxs, color: lightGray),
                                  ),
                                ],
                              ),
                              Text(
                                " ${_wishlist[index].sale!}(Sale) ",
                                style: TextStyle(fontSize: fontxs, color: lightGray),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: height * 0.03),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Container(
                            width: width * 0.08,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey.shade300),
                              color: white,
                            ),
                            child: Icon(Icons.delete, size: fontlg, color: gray),
                          ),
                          SizedBox(width: width * 0.04),
                          SizedBox(
                            width: width * 0.75,
                            height: height * 0.03,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: blue),
                                foregroundColor: blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Add to Shopping Cart",
                                style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontsm),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          itemCount: _wishlist.length,
        ),
      ),
    );
  }
}
