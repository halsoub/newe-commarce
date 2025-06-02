import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/screens/home/widgets/coupon_details.dart';
import 'package:flutter/material.dart';

class Coupon extends StatefulWidget {
  const Coupon({super.key});

  @override
  State<Coupon> createState() => _CouponState();
}

class _CouponState extends State<Coupon> {
  final List<String> _coupon = [
    "FASHION",
    "EVERY20",
    "COCO40",
    "PUBG70",
    "HEABSET10",
    "ENDOFMONTH",
    "LUCKYPRIZED",
    "HEABSET10",
    "ENDOFMONTH",
    "LUCKYPRIZED",
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: const BottomAppBar(),
      appBar: AppBar(
        backgroundColor: white,
        title: Text("Coupons"),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: width,
            color: white,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: white),
              width: width * 0.85,
              height: height * 0.06,
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
                        hintText: "Enter promo code",
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
      ),
      body: SingleChildScrollView(
        child: Container(
          color: darkWhite,
          width: width,
          height: height,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => CouponDetail()));
                  },
                  child: Container(
                    width: width,
                    height: 135,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(9), color: white),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 6),
                            width: 133,
                            height: 30,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                elevation: 10,
                                backgroundColor: blue,
                                side: BorderSide(color: blue),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              onPressed: () {
                                // Navigator.of(context).push(
                                //   MaterialPageRoute(builder: (context) => const CouponDetail()),
                                // );
                              },
                              child: const Text(
                                "Limited Offer",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Text(
                              _coupon[index],
                              style: TextStyle(fontSize: fontsm, fontWeight: FontWeight.w600),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.schedule, color: lightGray),
                                  Text(
                                    "  Expiring in 2day",
                                    style: TextStyle(color: lightGray, fontSize: fontsm),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Text(
                                  "Use Now",
                                  style: TextStyle(
                                    color: blue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            itemCount: _coupon.length,
          ),
        ),
      ),
    );
  }
}
