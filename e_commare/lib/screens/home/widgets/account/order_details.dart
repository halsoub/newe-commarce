import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/screens/home/widgets/cart/order_state.dart';
import 'package:e_commare/screens/home/widgets/chat.dart';
import 'package:flutter/material.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({super.key});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  final List<Order> _orderList = [];

  @override
  void initState() {
    Order order = Order(
      "INV385715457",
      "Logitech G502 Hero/ Mouse Logitech G 502 Hero",
      "12 Septemper 2020",
      "+2 other product",
      "\$80",
      "https://ijtechnology.net/assets/images/api/devkit/product/35.jpg",
    );

    Order order1 = Order(
      "INV385715456",
      "Delta Boots import8 Inch",
      "3 Septemper 2020",
      "+2 other product",
      "\$36",
      "https://ijtechnology.net/assets/images/api/devkit/product/25.jpg",
    );
    Order order2 = Order(
      "INV385715456",
      "TEROPONG MINI 30x BINOCULARS HD NIGHT VERION",
      "9 Septemper 2020",
      "+2 other product",
      "\$9.6",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/2.jpg",
    );

    Order order3 = Order(
      "INV385798021",
      "Original 100% 60W Magsafe 1 power Adapter Charger Mackbook Pro",
      "13Septemper 2020",
      "+2 other product",
      "\$38",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/42.jpg",
    );

    _orderList.add(order);
    _orderList.add(order1);
    _orderList.add(order2);
    _orderList.add(order3);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkWhite,
      appBar: AppBar(title: const Text("Order details"), backgroundColor: white),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              color: white,
              height: height * 0.2,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Status", style: TextStyle(fontSize: 15, color: Colors.black54)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Order Completed",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(
                                  context,
                                ).push(MaterialPageRoute(builder: (context) => OrderState()));
                              },
                              child: Text(
                                "View Status",
                                style: TextStyle(
                                  color: green,
                                  fontSize: fontxs,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Order Date", style: TextStyle(color: Colors.black54, fontSize: 15)),
                        Text("3 September 2019 11:32UTC"),
                      ],
                    ),
                    const Divider(),
                    const Text("INV378954", style: TextStyle(color: Colors.black54, fontSize: 15)),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 6),
              width: width,
              height: height * 0.75,
              color: darkWhite,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: width * 0.15,
                      height: height * 0.22,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          height: 100,
                                          width: 100,
                                          _orderList[index].img,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Container(
                                        color: white,
                                        width: width * 0.60,
                                        height: height * 0.12,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              _orderList[index].subTitle,
                                              overflow: TextOverflow.clip,
                                              style: const TextStyle(fontWeight: FontWeight.w600),
                                            ),
                                            Text(_orderList[index].numProduct),
                                            Text(_orderList[index].price),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Total Payment"),
                                    Text("  \$36", style: TextStyle(fontWeight: FontWeight.w600)),
                                  ],
                                ),
                              ],
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
            Container(
              color: white,
              width: width,
              height: height * 0.25,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Payment Information", style: TextStyle(fontWeight: FontWeight.w800)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Payment Method"),
                            Text(
                              "Visa card ending in 4392",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total Price(4 item)"),
                            Text("\$31.5", style: TextStyle(fontWeight: FontWeight.w800)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total Delivery(1.3kg)"),
                            Text("\$19", style: TextStyle(fontWeight: FontWeight.w800)),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total Paymnet", style: TextStyle(fontWeight: FontWeight.w800)),
                            Text("\$19", style: TextStyle(fontWeight: FontWeight.w800)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Chat()));
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                width: width,
                height: height * 0.10,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    elevation: 5,
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => const Chat()));
                  },
                  child: const Text("Chat Us"),
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  // _getDetails(String details) {
  //   return Text(
  //     details,
  //     style: TextStyle(fontSize: fontsm, fontWeight: FontWeight.w700),
  //   );
  // }
}

class Order {
  final String title;
  final String subTitle;
  final String date;
  final String numProduct;
  final String price;
  final String img;
  Order(this.title, this.subTitle, this.date, this.numProduct, this.price, this.img);
}
