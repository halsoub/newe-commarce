import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/models/flash_sale.dart';
import 'package:flutter/material.dart';

class ViewAll extends StatefulWidget {
  const ViewAll({super.key});

  @override
  State<ViewAll> createState() => _ViewAlleState();
}

class _ViewAlleState extends State<ViewAll> {
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

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkWhite,
      appBar: AppBar(
        backgroundColor: white,
        title: const Text("Flash Sale"),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              // onTap: () {
              //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Search()));
              // },
              child: Icon(size: fontxl, Icons.search, color: lightBlack),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              Image.network(
                "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/flashsale/1.jpg",
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Flash sale end in :",
                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontmd),
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromRGBO(244, 67, 54, 1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Text(
                                    "01",
                                    style: TextStyle(color: white, fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              const Text(
                                ":",
                                style: TextStyle(
                                  color: Color.fromRGBO(244, 67, 54, 1),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromRGBO(244, 67, 54, 1),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    "45",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                ":",
                                style: TextStyle(
                                  color: Color.fromRGBO(244, 67, 54, 1),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromRGBO(244, 67, 54, 1),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    "03",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(
                width: width,
                height: height,

                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _flashSale.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.95,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      width: width * 0.5,
                      height: height * 0.06,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    width: width * 0.48,
                                    height: height * 0.1,
                                    _flashSale[index].img,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.02),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                Text(
                                  _flashSale[index].name,
                                  style: TextStyle(fontSize: fontsm, fontWeight: FontWeight.w400),
                                ),
                                SizedBox(height: height * 0.01),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      _flashSale[index].price,
                                      style: const TextStyle(fontWeight: FontWeight.w600),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Text(
                                        "\$50",
                                        style: TextStyle(
                                          color: Color.fromRGBO(192, 192, 192, 1),
                                          decoration: TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: height * 0.02),

                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Container(
                                    width: width * 0.45,
                                    height: height * 0.01,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromRGBO(230, 230, 230, 1),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: width * 0.35,
                                          height: height * 0.01,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: blue,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: height * 0.01),

                                const Text(
                                  "Available",
                                  style: TextStyle(fontWeight: FontWeight.w500),
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
            ],
          ),
        ),
      ),
    );
  }
}
