import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/screens/home/widgets/account/order_details.dart';
import 'package:flutter/material.dart';

class OrderList extends StatefulWidget {
  const OrderList({super.key});

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
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
      "Spatula Set Stainless",
      "9 Septemper 2020",
      "+2 other product",
      "\$9.6",
      "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/34.jpg",
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
      appBar: AppBar(title: const Text("Order List"), backgroundColor: white),
      body: Container(
        width: width,
        height: height,
        color: darkWhite,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: width,
                height: height * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: white,
                  boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 1)],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(
                            context,
                          ).push(MaterialPageRoute(builder: (context) => const OrderDetail()));
                          setState(() {});
                        },
                        child: Text("On Process", style: TextStyle(color: blue)),
                      ),
                      const Divider(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              _orderList[index].date,
                              style: TextStyle(color: lightGray, fontSize: fontsm),
                            ),
                          ),
                          // const SizedBox(height: 3),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              _orderList[index].title,
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontmd),
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  width: width * 0.22,
                                  height: width * 0.22,
                                  _orderList[index].img,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  // padding: EdgeInsets.only(bottom: 30),
                                  width: width * 0.62,
                                  height: height * 0.12,
                                  color: white,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _orderList[index].subTitle,
                                        overflow: TextOverflow.clip,
                                        style: const TextStyle(fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        _orderList[index].numProduct,
                                        style: TextStyle(color: lightGray, fontSize: fontsm),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text("Total Payment"),
                                  Text(
                                    _orderList[index].price,
                                    style: TextStyle(color: black, fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
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
          itemCount: _orderList.length,
        ),
      ),
    );
  }
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
