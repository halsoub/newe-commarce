import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/models/flash_sale.dart';
import 'package:e_commare/models/last_search.dart';
import 'package:e_commare/screens/home/widgets/flash_sale.dart';

import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final FlashHome flashProduct;
  ProductDetails({super.key, required this.flashProduct});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final List<Estimated> _estimated = [];
  final List<LastSearchModel> _lastsearch = [];
  @override
  void initState() {
    LastSearchModel search = LastSearchModel(
      "BARDI Smart Camera CCT Wifi IOT Home Automation ",
      "\$ 18.3",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/1.jpg",
      5,
    );
    LastSearchModel search1 = LastSearchModel(
      "TEROPONG MINI 30x BINOCULARS HD NIGHT VERION",
      "\$ 657.3",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/2.jpg",
      1,
    );
    LastSearchModel search2 = LastSearchModel(
      "CAFELE Premium Light Glass Case - iPhon 11",
      "\$ 125.36",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/3.jpg",
      3,
    );
    LastSearchModel search3 = LastSearchModel(
      "Logitech G 502 Hero / Mouse Logitech G 502 Hero Original",
      "\$ 498.4",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/4.jpg",
      5,
    );
    LastSearchModel search4 = LastSearchModel(
      "Fimix8 SE Black",
      "\$ 65.3",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/26.jpg",
      4,
    );
    _lastsearch.add(search);
    _lastsearch.add(search1);
    _lastsearch.add(search2);
    _lastsearch.add(search3);
    _lastsearch.add(search4);

    Estimated item = Estimated(
      "A****i",
      "Vestibulum ante ipsum primis in faucibus orci",
      "11 September 2020",
    );
    Estimated item1 = Estimated(
      "L**a",
      "posuere cubilia curae; Fusce mattis erat eget neque",
      "11 September 2020",
    );
    Estimated item2 = Estimated(
      "R*****",
      "Quisque semper lobortis dolor vel accumsan",
      "11 September 2020",
    );
    Estimated item3 = Estimated(
      "D***",
      "Curabitur ut ante varius urna volutpat sodales",
      "11 September 2020",
    );
    Estimated item4 = Estimated(
      "S****a",
      "Nullam erat lorem, placerat ac elementum nec",
      "11 September 2020",
    );
    Estimated item5 = Estimated("B****g", "consectetur adipiscing elit.", "11 September 2020");

    _estimated.add(item);
    _estimated.add(item1);
    _estimated.add(item2);
    _estimated.add(item3);
    _estimated.add(item4);
    _estimated.add(item5);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkWhite,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * 0.42,
                width: width,
                color: white,
                child: Column(
                  children: [
                    Container(
                      height: height * 0.27,
                      width: width,
                      child: Image.network(fit: BoxFit.fill, widget.flashProduct.img),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.flashProduct.price,
                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontmd),
                          ),
                          Icon(Icons.favorite, color: gray),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        widget.flashProduct.name,
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(height: 8),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star, color: orange, size: 18),
                                Text("4", style: TextStyle(color: lightGray, fontSize: fontsm)),
                              ],
                            ),
                            VerticalDivider(color: lightGray, thickness: 1),
                            Text("17 Sale", style: TextStyle(color: lightGray, fontSize: fontsm)),
                            VerticalDivider(thickness: 1, color: lightGray),
                            Row(
                              children: [
                                Icon(Icons.place, color: lightGray, size: 18),
                                Text(
                                  "Brooklyn",
                                  style: TextStyle(color: lightGray, fontSize: fontsm),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              spacex,
              Container(
                width: width,
                height: height * 0.24,
                color: white,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Variant",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Text("Size :", style: TextStyle(color: Colors.black54, fontSize: 16)),
                          Text(
                            " XS",
                            style: TextStyle(
                              color: lightBlack,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 35,
                            // margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              color: blue,
                            ),
                            child: Center(
                              child: Text(
                                "XS",
                                style: TextStyle(fontSize: fontsm, color: Colors.white),
                              ),
                            ),
                          ),
                          _getSize("XS"),
                          _getSize("S"),
                          _getSize("M"),
                          _getSize("L"),
                          _getSize("XL"),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            "Colore :",
                            style: TextStyle(color: Colors.black54, fontSize: fontmd),
                          ),
                          const Text(
                            " Red",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 35,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              color: blue,
                            ),
                            child: Center(
                              child: Text("Red", style: TextStyle(fontSize: fontsm, color: white)),
                            ),
                          ),
                          _getColor("Red"),
                          _getColor("Black"),
                          _getColor("Green"),
                          _getColor("Whit"),
                          _getColor("Blue"),
                          _getColor("Yellow"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              spacex,
              Container(
                width: width,
                height: height * 0.14,
                color: white,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      " Delivery",
                      style: TextStyle(color: black, fontWeight: FontWeight.w600, fontSize: fontmd),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          overflow: TextOverflow.clip,
                          " Calculator the estimated cost for shipping goods to",
                          style: TextStyle(
                            color: lightBlack,
                            fontWeight: FontWeight.w400,
                            fontSize: fontxs,
                          ),
                        ),
                        Icon(Icons.chevron_right, size: fontxl, color: Colors.black54),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {});
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(builder: (context) => const DeliveryEstimated()),
                        // );
                      },
                      child: SizedBox(
                        width: width,
                        child: Text(
                          "West New  York,nj",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontSize: fontsm,
                          ),
                        ),
                      ),
                    ),
                    // const Text(
                    //   " York,nj",
                    //   style: TextStyle(
                    //     color: Colors.black54,
                    //     fontWeight: FontWeight.w600,
                    //     fontSize: 15,
                    //   ),
                    // ),
                  ],
                ),
              ),
              spacex,
              Container(
                width: width,
                height: height * 0.16,
                color: white,
                padding: const EdgeInsets.all(8.0),

                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Information",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Weight", style: TextStyle(color: Colors.black54, fontSize: 15)),
                        Text("300 Gram", style: TextStyle(color: Colors.black54, fontSize: 15)),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Condition", style: TextStyle(color: Colors.black54, fontSize: 15)),
                        Text("Second", style: TextStyle(color: Colors.black54, fontSize: 15)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Category",
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) => const Fashion(title: "Electronic"),
                            //   ),
                            // );
                          },
                          child: const Text(
                            "Electronic",
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              spacex,
              Container(
                width: width,
                height: height * 0.22,
                color: white,
                padding: const EdgeInsets.all(8.0),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: fontmd,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                      style: TextStyle(color: Colors.black, fontSize: fontsm),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "consectetur adipiscing elit. Etiam facilisis placerat leo pulvinar tristique",
                      style: TextStyle(color: Colors.black, fontSize: fontsm),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {});
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(builder: (context) => const ProductDescription()),
                            // );
                          },
                          child: Text(
                            "Read More",
                            style: TextStyle(
                              color: blue,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              spacex,
              Container(
                height: height * 0.45,
                color: white,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Related Product",
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontmd),
                        ),
                      ),
                    ),
                    Container(
                      width: width,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      height: height * 0.39 - 5,
                      color: white,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.all(5),
                            height: height * 0.22,
                            width: width * 0.33,
                            decoration: BoxDecoration(
                              boxShadow: [BoxShadow(color: lightGray, blurRadius: 1)],
                              // border: Border.all(color: lightGray),
                              borderRadius: BorderRadius.circular(10),
                              color: white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    height: 130,
                                    width: width,
                                    _lastsearch[index].image,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(_lastsearch[index].name, overflow: TextOverflow.clip),
                                      Text(
                                        _lastsearch[index].price,
                                        style: const TextStyle(fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 5,
                                        width: 200,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, index) {
                                            return const Icon(
                                              Icons.star,
                                              size: 14,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: _lastsearch.length,
                      ),
                    ),
                  ],
                ),
              ),
              spacex,
              spacex,
              Container(
                width: width,
                height: height * 0.6,
                color: white,
                child: Column(
                  children: [
                    Container(
                      width: width,
                      height: height * 0.08,
                      color: white,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Review",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    // Navigator.of(context).push(
                                    //   MaterialPageRoute(builder: (context) => const ProductReview()),
                                    // );
                                  },
                                  child: Text(
                                    " View All",
                                    style: TextStyle(
                                      color: blue,
                                      fontWeight: FontWeight.w500,
                                      fontSize: fontsm,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: height * 0.02,
                                  width: width * 0.18,
                                  child: ListView.builder(
                                    itemBuilder: (context, index) {
                                      return const Icon(Icons.star, size: 14, color: Colors.amber);
                                    },
                                    itemCount: 5,
                                  ),
                                ),
                                const Text(
                                  "(354) ",
                                  style: TextStyle(color: Colors.black54, fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return const Divider();
                          },
                          // physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: width,
                              height: height * 0.1,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        _estimated[index].desc,
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: fontsm,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        _estimated[index].title,
                                        style: TextStyle(color: black, fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 20,
                                        width: 80,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, index) {
                                            return const Icon(
                                              Icons.star,
                                              size: 14,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        _estimated[index].subtitle,
                                        style: const TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: _estimated.length,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              spacex,
              Container(
                width: width,
                color: white,
                height: height * 0.08,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: width * 0.11,
                      width: width * 0.11,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: blue,
                      ),
                      child: Icon(Icons.message, color: white),
                    ),
                    Container(
                      width: width * 0.8,
                      height: height * 0.045,
                      // color: red,
                      margin: const EdgeInsets.symmetric(horizontal: 9),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          elevation: 5,
                          side: BorderSide(color: blue),
                          foregroundColor: blue,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Item has been added to shopping cart")),
                          );
                        },
                        child: const Text("Add to shopping  cart", style: TextStyle(fontSize: 18)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _getSize(String size) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Container(
        width: 40,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: white,
        ),
        child: Center(child: Text(size, style: TextStyle(fontSize: fontsm, color: lightBlack))),
      ),
    );
  }

  _getColor(String color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Container(
        width: 50,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: white,
        ),
        child: Center(child: Text(color, style: TextStyle(fontSize: fontsm, color: lightBlack))),
      ),
    );
  }
}

class Estimated {
  String title;
  String subtitle;
  String desc;

  Estimated(this.title, this.subtitle, this.desc);
}
