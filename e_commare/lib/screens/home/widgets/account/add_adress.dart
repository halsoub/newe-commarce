import 'package:e_commare/constants/constants.dart';
import 'package:flutter/material.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({super.key});

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkWhite,
      appBar: AppBar(title: const Text("Add Address"), backgroundColor: white),
      body: SizedBox(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: "Adsress Title*",
                    labelStyle: TextStyle(color: gray),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: lightGray)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: green, width: 2),
                    ),
                  ),
                ),
                spacex,
                TextField(
                  decoration: InputDecoration(
                    labelText: "Recipient's Name",
                    labelStyle: TextStyle(color: gray),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: lightGray)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: green, width: 2),
                    ),
                  ),
                ),
                spacex,
                TextField(
                  decoration: InputDecoration(
                    labelText: "Recipient's Phone Number",
                    labelStyle: TextStyle(color: gray),

                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: lightGray)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: green, width: 2),
                    ),
                  ),
                ),
                spacex,
                TextField(
                  decoration: InputDecoration(
                    labelText: "Address Line 1 *",
                    labelStyle: TextStyle(color: gray),

                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: lightGray)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: green, width: 2),
                    ),
                  ),
                ),
                spacex,
                TextField(
                  decoration: InputDecoration(
                    labelText: "Address Line 2 *",
                    labelStyle: TextStyle(color: gray),

                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: lightGray)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: green, width: 2),
                    ),
                  ),
                ),
                spacex,
                TextField(
                  decoration: InputDecoration(
                    labelText: "State/Provice/Region",
                    labelStyle: TextStyle(color: gray),

                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: lightGray)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: green, width: 2),
                    ),
                  ),
                ),
                spacex,
                TextField(
                  decoration: InputDecoration(
                    labelText: "Postal Code *",
                    labelStyle: TextStyle(color: gray),

                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: lightGray)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: green, width: 2),
                    ),
                  ),
                ),
                spacex,
                Container(
                  width: width,
                  height: height * 0.05,
                  margin: EdgeInsets.all(10),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      elevation: 5,
                      backgroundColor: green,
                      side: BorderSide(color: green),
                      foregroundColor: white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    onPressed: () {
                      setState(() {});
                      showDialog(
                        context: context,
                        builder:
                            (context) => AlertDialog(
                              title: const Text(
                                "Edit Address Success",
                                style: TextStyle(
                                  // fontWeight: FontWeight.w200,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              content: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  elevation: 5,
                                  backgroundColor: green,
                                  foregroundColor: white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {});
                                  Navigator.of(context).pop();
                                },
                                child: const Text("OK"),
                              ),
                            ),
                      );
                    },
                    child: const Text("Save"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
