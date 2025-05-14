import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/models/flash_sale.dart';
import 'package:e_commare/screens/home/widgets/product_details.dart';
import 'package:flutter/material.dart';

class FlashSale extends StatefulWidget {
  const FlashSale({super.key});

  @override
  State<FlashSale> createState() => _FlashSaleState();
}

class _FlashSaleState extends State<FlashSale> {
  final List<FlashHome> _flashSale = [
    FlashHome(
      "BARDI Smart Camera CCT Wifi IOT HomeAutomation support iOS Android",
      "\$33.2",
      "\$21",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/1.jpg",
    ),
    FlashHome(
      "Anker SoundCore Life Note Wireless Earbuds",
      "\$76",
      "\$42",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/8.jpg",
    ),
  ];
  FlashHome item1 = FlashHome(
    "BARDI Smart Camera CCT Wifi IOT HomeAutomation support iOS Android",
    "\$33.2",
    "\$21",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/1.jpg",
  );
  FlashHome item2 = FlashHome(
    "TEROPONG MINI 30x BINOCULARS 30 x 60 Binoculars HD Night Version 30 x 60 ",
    "\$9",
    "\$7.2",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/2.jpg",
  );
  FlashHome item3 = FlashHome(
    " CAFELE Premium Light Glass Case - iPhon 11 ",
    "\$100",
    "\$60",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/3.jpg",
  );
  FlashHome item4 = FlashHome(
    "Logitech G 502 Hero / Mouse Logitech G 502 Original Garansi",
    "\$33",
    "\$21",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/4.jpg",
  );

  FlashHome item5 = FlashHome(
    "LOGITECHCfdfffOT",
    "\$150",
    "\$91",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/5.jpg",
  );
  FlashHome item6 = FlashHome(
    "Pioneer SE-C5TW TWS Blutooth Truly Wireless ",
    "\$33",
    "\$21",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/6.jpg",
  );
  FlashHome item7 = FlashHome(
    "Anker SoundCore Life Note Wireless Earbuds",
    "\$76",
    "\$42",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/8.jpg",
  );
  @override
  void initState() {
    _flashSale.add(item2);
    _flashSale.add(item3);
    _flashSale.add(item4);
    _flashSale.add(item1);
    _flashSale.add(item5);
    _flashSale.add(item6);
    _flashSale.add(item7);
    super.initState();
  }

  List<String> _itme = ["01", "36", "55"];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkWhite,
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Flash sale",
              style: TextStyle(fontSize: fontmd, fontWeight: FontWeight.w600, color: black),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Flash sale end in  ", style: TextStyle(color: gray, fontSize: fontsm)),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: red,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Text(
                            "01",
                            style: TextStyle(color: white, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Text(
                        " : ",
                        style: TextStyle(color: red, fontWeight: FontWeight.w600, fontSize: fontmd),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: red,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "36",
                            style: TextStyle(color: white, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Text(
                        " : ",
                        style: TextStyle(color: red, fontWeight: FontWeight.w600, fontSize: fontmd),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: red,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "55",
                            style: TextStyle(color: white, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),

                      // Container(
                      //   height: height * 0.03,
                      //   width: width * 0.3,
                      //   color: blue,
                      //   child: ListView.separated(
                      //     itemBuilder: (context, index) => Text("data"),
                      //     separatorBuilder: (context, index) => Divider(color: black),
                      //     itemCount: _time.length,
                      //   ),
                      // ),
                    ],
                  ),
                  Text("view all", style: TextStyle(color: green, fontWeight: FontWeight.w700)),
                ],
              ),
            ),

            SizedBox(height: height * 0.02),

            Container(
              height: height * 0.3,
              width: width,
              color: darkWhite,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder:
                    // final fla;
                    (context, index) => Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder:
                                    (context) => ProductDetails(flashProduct: _flashSale[index]),
                              ),
                            );
                          },
                          child: Container(
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
                                      image: NetworkImage(_flashSale[index].img!),
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
                                        _flashSale[index].name!,
                                        style: TextStyle(color: black),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        _flashSale[index].discount,
                                        style: TextStyle(
                                          color: lightGray,
                                          decoration: TextDecoration.lineThrough,
                                        ),
                                      ),
                                      Text(
                                        _flashSale[index].price,
                                        style: TextStyle(color: black, fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                itemCount: _flashSale.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
