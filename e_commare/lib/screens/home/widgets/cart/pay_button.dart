import 'package:e_commare/constants/constants.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkWhite,
      appBar: AppBar(title: const Text("Payment"), backgroundColor: white),
      body: Column(
        children: [
          Container(
            width: width,
            height: height * 0.11,
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Summary", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Payment", style: TextStyle(fontSize: 15)),
                      Text("\$74", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            color: white,
            width: width,
            height: height * 0.12,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Payment Method",
                        style: TextStyle(
                          color: lightBlack,
                          fontWeight: FontWeight.w800,
                          fontSize: fontmd,
                        ),
                      ),
                      InkWell(
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
                                        padding: const EdgeInsets.symmetric(vertical: 10),
                                        child: Text(
                                          "Payment Method",
                                          style: TextStyle(
                                            fontSize: fontmd,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: height * 0.02,
                                            width: width * 0.08,
                                            child: Image.network(
                                              "https://ijtechnology.net/demo/devkit/assets/assets/images/visa.png",
                                            ),
                                          ), // FaIcon(FontAwesomeIcons.ccVisa, color: lightBlue),
                                          const Text("  Visa card ending in 4392"),
                                        ],
                                      ),
                                      const Divider(),
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: height * 0.02,
                                            width: width * 0.08,
                                            child: Image.network(
                                              "https://ijtechnology.net/demo/devkit/assets/assets/images/mastercard.png",
                                            ),
                                          ),
                                          const Text("  Master card ending in 5309"),
                                        ],
                                      ),
                                      const Divider(),
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: height * 0.02,
                                            width: width * 0.08,
                                            child: Image.network(
                                              "https://ijtechnology.net/demo/devkit/assets/assets/images/visa.png",
                                            ),
                                          ),
                                          const Text("  Visa card ending in 2285"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Text(
                          "Change",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: fontsm,
                            color: green,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        height: height * 0.02,
                        width: width * 0.08,
                        child: Image.network(
                          "https://ijtechnology.net/demo/devkit/assets/assets/images/visa.png",
                        ),
                      ),
                      Text(
                        "  Visa card ending in 4392",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: width * 0.80,
            height: 30,
            margin: const EdgeInsets.all(10),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                elevation: 5,
                backgroundColor: green,
                side: BorderSide(color: green),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        "Your payment is Success We will prepare your order as soon as posible",
                        style: TextStyle(fontSize: fontsm),
                        textAlign: TextAlign.center,
                      ),
                      content: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          elevation: 5,
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("OK"),
                      ),
                    );
                  },
                );
              },
              child: const Text("Pay"),
            ),
          ),
        ],
      ),
    );
  }
}
