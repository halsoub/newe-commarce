import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/models/flash_sale.dart';
import 'package:e_commare/screens/home/widgets/account/payment_method.dart';
import 'package:e_commare/screens/home/widgets/cart/change_address.dart';
import 'package:e_commare/screens/home/widgets/cart/pay_button.dart';
import 'package:flutter/material.dart';

class Delivery extends StatefulWidget {
  const Delivery({super.key});

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  List<FlashHome> _cartBottom = [];
  FlashHome item4 = FlashHome(
    "BARDI Smart Light Bull Lamp LED EIFI RGBWW 12W 12 Watt Home IoT",
    "\$33",
    "1 item",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/58.jpg",
  );

  FlashHome item5 = FlashHome(
    "BARDI Smart UNIVARSAL IR REMOTE Wireless IoT For Home",
    "\$150",
    "2 item",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/60.jpg",
  );
  FlashHome item6 = FlashHome(
    "BARDI Smart PLUG WIFI Wireless Colokan- IoT Smart Home",
    "\$11.46",
    "2 item",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/69.jpg",
  );
  @override
  void initState() {
    _cartBottom.add(item4);
    _cartBottom.add(item5);
    _cartBottom.add(item6);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkWhite,
      appBar: AppBar(backgroundColor: white, title: const Text("Delivery")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10),
              width: width,
              height: height * 0.3,
              color: white,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Home Address",
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontmd),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          // padding: EdgeInsets.all(2),
                          color: blue,
                          width: 70,
                          height: 22,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text("Default", style: TextStyle(color: white, fontSize: 15)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text("Robert Steven", style: TextStyle(color: lightBlack, fontSize: fontmd)),
                    Text("0811888999", style: TextStyle(color: lightBlack, fontSize: fontmd)),
                    Text("6019 Madison st", style: TextStyle(color: lightBlack, fontSize: fontmd)),
                    Text("West New York", style: TextStyle(color: lightBlack, fontSize: fontmd)),
                    Text("USA", style: TextStyle(color: lightBlack, fontSize: fontmd)),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(
                                context,
                              ).push(MaterialPageRoute(builder: (context) => const ChangeAdd()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Change Address",
                                style: TextStyle(
                                  color: green,
                                  fontWeight: FontWeight.w500,
                                  fontSize: fontsm,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            spacex,
            spacex,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    color: white,
                    width: width,
                    child: Text(
                      "Order List",
                      style: TextStyle(fontSize: fontmd, color: black, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                Container(
                  color: white,
                  width: width,
                  height: height * 0.46,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                          padding: const EdgeInsets.only(top: 10),
                          width: width,
                          height: height * 0.15,
                          color: white,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    width: 100,
                                    _cartBottom[index].img,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: width * 0.65,
                                        child: Text(
                                          _cartBottom[index].name,
                                          style: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          overflow: TextOverflow.clip,
                                        ),
                                      ),
                                      Text(
                                        _cartBottom[index].price,
                                        style: const TextStyle(color: Colors.black26, fontSize: 12),
                                      ),
                                      Text(
                                        _cartBottom[index].discount,
                                        style: TextStyle(color: black, fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: 3,
                  ),
                ),
              ],
            ),
            spacex,
            spacex,
            Container(
              color: white,
              height: height * 0.15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Text(
                      "Delivery",
                      style: TextStyle(fontSize: fontmd, color: black, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: height * 0.40,
                              color: white,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      child: Text(
                                        "Choose Courier",
                                        style: TextStyle(
                                          fontSize: fontmd,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    _getCourier("DHL", "\$13"),
                                    _getCourier("Express", "\$22"),
                                    const Divider(),
                                    _getCourier("FedEx", ""),
                                    _getCourier("Express", "\$9"),
                                    _getCourier("Regular", "\$17"),
                                    const Divider(),
                                    _getCourier("Othee1", ""),
                                    _getCourier("Express", "\$9"),
                                    _getCourier("Regular", "\$17"),
                                    const Divider(),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.local_shipping, color: blue),
                                  Text(
                                    "  Choose Delivery",
                                    style: TextStyle(color: black, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Icon(Icons.chevron_right, color: lightGray),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            spacex,
            spacex,
            Container(
              height: height * 0.14,
              color: white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sub Total",
                          style: TextStyle(
                            fontSize: fontmd,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "\$40.16",
                          style: TextStyle(
                            fontSize: fontmd,
                            color: red,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 80,
                          height: 30,
                          margin: const EdgeInsets.all(10),
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              elevation: 5,
                              backgroundColor: green,
                              foregroundColor: white,
                              side: BorderSide(color: green),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            ),
                            onPressed: () {
                              Navigator.of(
                                context,
                              ).push(MaterialPageRoute(builder: (context) => Payment()));
                            },
                            child: const Text("Pay"),
                          ),
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
    );
  }

  _getCourier(String courier, String price) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(courier), Text(price)],
        ),
      ],
    );
  }
}
