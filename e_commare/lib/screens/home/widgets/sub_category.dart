import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/models/flash_sale.dart';
import 'package:e_commare/models/last_search.dart';
import 'package:flutter/material.dart';

class Fashion extends StatefulWidget {
  const Fashion({super.key, required this.title});
  final String title;

  @override
  State<Fashion> createState() => _FashionState();
}

class _FashionState extends State<Fashion> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<LastSearchModel> _newProduct = [
    LastSearchModel(
      "Delta Boot import 8 inch",
      "\$18.3",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/25.jpg",
      212,
    ),
    LastSearchModel(
      "Fimix8 SE Black",
      "\$ 65.3",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/26.jpg",
      63,
    ),
    LastSearchModel(
      "Guess Collection Watch Ceramic type Gc",
      "\$ 125.36",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/27.jpg",
      7,
    ),
    LastSearchModel(
      "Adidas Football Predator 19.3FG F35594",
      "\$ 498.4",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/32.jpg",
      30,
    ),
    LastSearchModel(
      "New Original Apple TV 4K 64Gb 5th Generation ",
      "\$ 173.3",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/29.jpg",
      98,
    ),
    LastSearchModel(
      "Changhong Google certified Android Smart TV 321 inch 32H4 LED ",
      "\$ 129.3",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/31.jpg",
      701,
    ),
    LastSearchModel(
      "SAMSUNG GALAXY S20 Plus RAM 8/128GB ",
      "\$ 173.3",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/30.jpg",
      14,
    ),
  ];

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

  List<String> _img = [
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/home_banner/2.jpg",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/home_banner/4.jpg",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/home_banner/5.jpg",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/home_banner/3.jpg",
  ];
  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: darkWhite,
      appBar: AppBar(
        backgroundColor: white,
        title: Text(widget.title, style: TextStyle(fontSize: fontmd)),
        // leading: IconButton(
        //   padding: const EdgeInsets.only(bottom: 5),
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        //   icon: const FaIcon(FontAwesomeIcons.arrowLeft),
        // ),
        actions: const [
          Padding(padding: EdgeInsets.all(8.0), child: Icon(Icons.search, color: Colors.black45)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.28,
              width: width,
              child: PageView.builder(
                controller: _pageController,
                itemCount: _img.length,
                onPageChanged: _onPageChanged,
                itemBuilder: (context, index) {
                  return Container(
                    width: width,
                    child: Image.network(_img[index], fit: BoxFit.fill),
                  );
                },
              ),
            ),
            SizedBox(height: height * 0.01),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _img.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: 10,
                    width: _currentPage == index ? 20 : 10,
                    decoration: BoxDecoration(
                      color: _currentPage == index ? blue : lightGray,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Text(
                          "Trending Product",
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontmd),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: width,
                    height: height * 0.48,
                    padding: const EdgeInsets.all(5),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: height * 0.2,
                          width: width * 0.4,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(_flashSale[index].img, fit: BoxFit.fitWidth),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _flashSale[index].name,
                                      style: TextStyle(fontSize: fontsm),
                                    ),
                                    Text(
                                      _flashSale[index].price,
                                      style: const TextStyle(fontWeight: FontWeight.w600),
                                    ),
                                    const Row(
                                      children: [
                                        Icon(Icons.star, size: 14, color: Colors.amber),
                                        Icon(Icons.star, size: 14, color: Colors.amber),
                                        Icon(Icons.star, size: 14, color: Colors.amber),
                                        Icon(Icons.star, size: 14, color: Colors.amber),
                                        Icon(Icons.star, size: 14, color: Colors.amber),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: _flashSale.length,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "New Product",
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontmd),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: width,
                    height: height * 0.35,
                    padding: const EdgeInsets.all(10),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: height * 0.18,
                          width: width * 0.40,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                width: width * 0.80,
                                _newProduct[index].image,
                                fit: BoxFit.fitWidth,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _newProduct[index].name,
                                      style: TextStyle(fontSize: fontsm),
                                    ),
                                    Text(
                                      _newProduct[index].price,
                                      style: const TextStyle(fontWeight: FontWeight.w600),
                                    ),
                                    const Row(
                                      children: [
                                        Icon(Icons.star, size: 14, color: Colors.amber),
                                        Icon(Icons.star, size: 14, color: Colors.amber),
                                        Icon(Icons.star, size: 14, color: Colors.amber),
                                        Icon(Icons.star, size: 14, color: Colors.amber),
                                        Icon(Icons.star, size: 14, color: Colors.amber),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: _newProduct.length,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "All Product",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontmd),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: width,
                height: height,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _flashSale.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      height: height * 0.20,
                      width: width * 0.40,
                      margin: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              width: width,
                              height: 100,
                              _flashSale[index].img,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(_flashSale[index].name),
                                Text(
                                  _flashSale[index].price,
                                  style: const TextStyle(fontWeight: FontWeight.w600),
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.star, size: 14, color: Colors.amber),
                                    Icon(Icons.star, size: 14, color: Colors.amber),
                                    Icon(Icons.star, size: 14, color: Colors.amber),
                                    Icon(Icons.star, size: 14, color: Colors.amber),
                                    Icon(Icons.star, size: 14, color: Colors.amber),
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
          ],
        ),
      ),
    );
  }
}
