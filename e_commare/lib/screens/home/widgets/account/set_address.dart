import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/screens/home/widgets/account/add_adress.dart';
import 'package:e_commare/screens/home/widgets/account/edit_address.dart';
import 'package:flutter/material.dart';

class SetAdress extends StatefulWidget {
  const SetAdress({super.key});

  @override
  State<SetAdress> createState() => _SetAdressState();
}

class _SetAdressState extends State<SetAdress> {
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
      appBar: AppBar(
        title: const Text("Set Address"),
        backgroundColor: white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: const Icon(Icons.add),
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => const AddAddress()));
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(4),
                width: width,
                height: height * 0.28,
                padding: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 1, offset: Offset(2, 2)),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
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
                            color: blue,
                            width: width * 0.14,
                            height: height * 0.026,
                            child: Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                "Default ",
                                style: TextStyle(color: white, fontSize: fontxs),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.02),
                      Text("Robert Steven", style: TextStyle(color: lightBlack, fontSize: fontsm)),
                      Text("0811888999", style: TextStyle(color: lightBlack, fontSize: fontsm)),
                      Text(
                        "6019 Madison st",
                        style: TextStyle(color: lightBlack, fontSize: fontsm),
                      ),
                      Text("West New York", style: TextStyle(color: lightBlack, fontSize: fontsm)),
                      Text("USA", style: TextStyle(color: lightBlack, fontSize: fontsm)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(
                                  context,
                                ).push(MaterialPageRoute(builder: (context) => const EditAdress()));
                              },
                              child: Text(
                                "Edit",
                                style: TextStyle(fontWeight: FontWeight.w600, color: green),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text("Delete Payment Method"),
                                      content: const Text("Are you sure to delete this address ?"),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            setState(() {});
                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            "No",
                                            style: TextStyle(color: blue, fontSize: fontsm),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            ScaffoldMessenger.of(context).showSnackBar(
                                              const SnackBar(content: Text("Delete Successfully")),
                                            );
                                          },
                                          child: Text(
                                            "Yes",
                                            style: TextStyle(color: blue, fontSize: fontsm),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Text(
                                "Delet",
                                style: TextStyle(fontWeight: FontWeight.w600, color: green),
                              ),
                            ),
                          ),
                        ],
                      ),
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
                      margin: const EdgeInsets.all(6),
                      width: width,
                      height: height * 0.26,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 1, offset: Offset(2, 2)),
                        ],
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
                              style: TextStyle(color: lightBlack, fontSize: fontsm),
                            ),
                            Text(
                              _address[index].num,
                              style: TextStyle(color: lightBlack, fontSize: fontsm),
                            ),
                            Text(
                              _address[index].street,
                              style: TextStyle(color: lightBlack, fontSize: fontsm),
                            ),
                            Text(
                              _address[index].province,
                              style: TextStyle(color: lightBlack, fontSize: fontsm),
                            ),
                            Text(
                              _address[index].country,
                              style: TextStyle(color: lightBlack, fontSize: fontsm),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: InkWell(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: const Text("Make Default"),
                                              content: const Text(
                                                "Are you sure to make this address a default address ?",
                                              ),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    setState(() {});
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text(
                                                    "No",
                                                    style: TextStyle(color: blue, fontSize: 15),
                                                  ),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                    showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return AlertDialog(
                                                          content: const Text("Success"),
                                                          actions: [
                                                            ElevatedButton(
                                                              onPressed: () {
                                                                Navigator.of(context).pop();
                                                              },
                                                              style: ElevatedButton.styleFrom(
                                                                backgroundColor: green,
                                                              ),
                                                              child: Text(
                                                                "OK",
                                                                style: TextStyle(
                                                                  color: white,
                                                                  fontWeight: FontWeight.w700,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                  },
                                                  child: Text(
                                                    "Yes",
                                                    style: TextStyle(color: blue, fontSize: 15),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: Text(
                                        "Macke Default",
                                        style: TextStyle(color: green, fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) => const EditAdress()),
                                      );
                                    },
                                    child: Text(
                                      "Edit",
                                      style: TextStyle(color: green, fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: const Text("Delete Payment Method"),
                                          content: const Text(
                                            "Are you sure to delete this address ?",
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                setState(() {});
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                "No",
                                                style: TextStyle(color: blue, fontSize: 15),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                ScaffoldMessenger.of(context).showSnackBar(
                                                  const SnackBar(
                                                    content: Text("Delete Successfully"),
                                                  ),
                                                );
                                              },
                                              child: Text(
                                                "Yes",
                                                style: TextStyle(color: blue, fontSize: 15),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Text(
                                      "Delete",
                                      style: TextStyle(color: green, fontWeight: FontWeight.w600),
                                    ),
                                  ),
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
