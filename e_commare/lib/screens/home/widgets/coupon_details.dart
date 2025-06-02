import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/screens/home/home.dart';
import 'package:flutter/material.dart';

class CouponDetail extends StatefulWidget {
  const CouponDetail({super.key});

  @override
  State<CouponDetail> createState() => _CouponDetailState();
}

class _CouponDetailState extends State<CouponDetail> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      appBar: AppBar(backgroundColor: white, title: Text("Coupons Detaills")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              // padding: EdgeInsets.all(20),
              width: width,
              height: height * 0.15,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "EVERY20",
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontlg),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 132,
                          height: 30,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              elevation: 5,
                              backgroundColor: blue,
                              side: const BorderSide(color: Colors.blueAccent),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Limited Offer",
                              // style: TextStyle(
                              //     fontWeight: FontWeight.w400,
                              //     fontSize: fontsm),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.schedule, color: lightGray, size: 18),
                            Text(
                              "  Expiring in 6 day",
                              style: TextStyle(color: lightGray, fontSize: fontsm),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Terms and Conditions",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontlg),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like) sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like",
                      style: TextStyle(fontSize: fontsm),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: width * 0.95,
                // height: 75,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    elevation: 5,
                    backgroundColor: green,
                    side: BorderSide(color: green),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  ),
                  onPressed: () {
                    setState(() {});
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => const HomeScreen()));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Coupon Applied", style: TextStyle(color: white))),
                    );
                  },
                  child: Text(
                    "Use",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontmd),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
