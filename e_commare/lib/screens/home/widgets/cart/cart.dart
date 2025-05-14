import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/models/flash_sale.dart';
import 'package:e_commare/screens/home/widgets/cart/Delivery.dart';
import 'package:e_commare/screens/home/widgets/chat.dart';
import 'package:e_commare/screens/home/widgets/notivication_home.dart';
import 'package:flutter/material.dart';

class CartBottom extends StatefulWidget {
  const CartBottom({super.key});

  @override
  State<CartBottom> createState() => _CartBottomState();
}

class _CartBottomState extends State<CartBottom> {
  int _counter = 0;
  List<FlashHome> _cartBottom = [];
  FlashHome item4 = FlashHome(
    "BARDI Smart Light Bull Lamp LED EIFI RGBWW 12W 12 Watt Home IoT",
    "\$33",
    "\$21",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/58.jpg",
  );

  FlashHome item5 = FlashHome(
    "BARDI Smart UNIVARSAL IR REMOTE Wireless IoT For Home",
    "\$150",
    "\$91",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/60.jpg",
  );
  FlashHome item6 = FlashHome(
    "BARDI Smart PLUG WIFI Wireless Colokan- IoT Smart Home",
    "\$11.46",
    "\$91",
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
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart", style: TextStyle(fontSize: fontmd, color: black)),
        backgroundColor: white,
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Chat()));
            },
            child: Icon(Icons.email, color: gray, size: fontlg),
          ),
          Badge(
            backgroundColor: lightRed,
            alignment: AlignmentDirectional.center,
            label: Text("8"),

            child: IconButton(
              icon: Icon(Icons.notifications, color: gray, size: fontlg),
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => Notificationn()));
              },
            ),
          ),
        ],
      ),
      backgroundColor: darkWhite,
      body: Column(
        children: [
          Container(
            color: white,
            width: width,
            height: height * 0.58,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  width: width,
                  color: white,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    color: white,
                    width: width,
                    height: height * 0.18,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(_cartBottom[index].img),
                        ),
                        SizedBox(width: width * 0.02),
                        SizedBox(
                          width: width * 0.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(_cartBottom[index].name, style: TextStyle(fontSize: fontsm)),
                              Text(
                                _cartBottom[index].price,
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 12),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: width * 0.06,
                                    height: width * 0.06,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: gray),
                                      color: white,
                                    ),
                                    child: Icon(Icons.delete, size: 20, color: gray),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: width * 0.06,
                                        height: width * 0.06,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(color: blue),
                                          color: const Color.fromRGBO(1, 174, 214, 1),
                                        ),
                                        child: Icon(Icons.remove, size: fontmd, color: white),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 8),
                                        child: Text(
                                          "$_counter",
                                          style: TextStyle(fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        width: width * 0.06,
                                        height: width * 0.06,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(color: blue),
                                          color: const Color.fromRGBO(1, 174, 214, 1),
                                        ),
                                        child: const Icon(Icons.add, size: 20, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: _cartBottom.length,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
            ),
          ),

          SizedBox(height: height * 0.02),
          Container(
            width: width,
            height: height * 0.21,
            color: white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    // onTap: () {
                    //   Navigator.of(
                    //     context,
                    //   ).push(MaterialPageRoute(builder: (context) => const Coupon()));
                    // },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: height * 0.05,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        color: white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.sell, color: blue),
                                SizedBox(width: 8),
                                Text("Use coupons", style: TextStyle(fontWeight: FontWeight.w700)),
                              ],
                            ),
                            Icon(Icons.chevron_right, color: gray),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: height * 0.12,
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
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 80,
                              height: height * 0.04,
                              margin: const EdgeInsets.all(10),
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  elevation: 5,
                                  backgroundColor: green,
                                  side: BorderSide(color: green),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(
                                    context,
                                  ).push(MaterialPageRoute(builder: (context) => const Delivery()));
                                },
                                child: const Text("Next"),
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
        ],
      ),
    );
  }
}
