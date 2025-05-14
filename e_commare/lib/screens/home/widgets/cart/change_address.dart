import 'package:e_commare/constants/constants.dart';
import 'package:flutter/material.dart';

class ChangeAdd extends StatefulWidget {
  const ChangeAdd({super.key});

  @override
  State<ChangeAdd> createState() => _ChangeAddState();
}

class _ChangeAddState extends State<ChangeAdd> {
  final List<Address> _address = [];
  @override
  void initState() {
    Address add = Address(
      "Apartment Address",
      "Robert Steven",
      "0811888999",
      "6019 Madison st",
      "West New York",
      "USA",
    );
    Address add1 = Address(
      "Office Address",
      "Robert Steven",
      "0811888999",
      "6019 Madison st",
      "West New York",
      "USA",
    );
    Address add2 = Address(
      "Mom Address",
      "Robert Steven",
      "0811888999",
      "6019 Madison st",
      "West New York",
      "USA",
    );
    Address add3 = Address(
      "Anthony Address",
      "Robert Steven",
      "0811888999",
      "6019 Madison st",
      "West New York",
      "USA",
    );

    _address.add(add);
    _address.add(add1);
    _address.add(add2);
    _address.add(add3);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkWhite,
      appBar: AppBar(title: const Text("Change Address"), backgroundColor: white),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(4),
                width: width,
                height: height * 0.22,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: white),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Home Address",
                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                          ),
                          Container(
                            // padding: EdgeInsets.all(2),
                            color: Colors.blue,
                            width: 70,
                            height: 22,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                "Default",
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Robert Steven",
                        style: TextStyle(color: Colors.black45, fontSize: 15),
                      ),
                      const Text(
                        "0811888999",
                        style: TextStyle(color: Colors.black45, fontSize: 15),
                      ),
                      const Text(
                        "6019 Madison st",
                        style: TextStyle(color: Colors.black45, fontSize: 15),
                      ),
                      const Text(
                        "West New York",
                        style: TextStyle(color: Colors.black45, fontSize: 15),
                      ),
                      const Text("USA", style: TextStyle(color: Colors.black45, fontSize: 15)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: width,
                height: height,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _address.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      width: width,
                      height: height * 0.26,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  _address[index].address,
                                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              _address[index].name,
                              style: const TextStyle(color: Colors.black45, fontSize: 15),
                            ),
                            Text(
                              _address[index].num,
                              style: const TextStyle(color: Colors.black45, fontSize: 15),
                            ),
                            Text(
                              _address[index].street,
                              style: const TextStyle(color: Colors.black45, fontSize: 15),
                            ),
                            Text(
                              _address[index].province,
                              style: const TextStyle(color: Colors.black45, fontSize: 15),
                            ),
                            Text(
                              _address[index].country,
                              style: const TextStyle(color: Colors.black45, fontSize: 15),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Use this",
                                  style: TextStyle(color: Colors.green, fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
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

class Address {
  String address;
  String name;
  String num;
  String street;
  String province;
  String country;
  Address(this.address, this.name, this.num, this.street, this.province, this.country);
}
