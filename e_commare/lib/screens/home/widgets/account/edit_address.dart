import 'package:e_commare/constants/constants.dart';
import 'package:flutter/material.dart';

class EditAdress extends StatefulWidget {
  const EditAdress({super.key});

  @override
  State<EditAdress> createState() => _EditAdressState();
}

class _EditAdressState extends State<EditAdress> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkWhite,
      appBar: AppBar(title: const Text("Edit Address"), backgroundColor: white),
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
                    labelText: "Address Title*",
                    hintText: "Robert Steven",
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
                    hintText: "Robert Steven",
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
                    hintText: "Robert Steven",
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
                    hintText: "Robert Steven",
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
                    hintText: "Robert Steven",
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
                    hintText: "Robert Steven",
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
                    hintText: "Robert Steven",
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: lightGray)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: green, width: 2),
                    ),
                  ),
                ),
                spacex,
                Container(
                  width: width,
                  height: 30,
                  margin: const EdgeInsets.all(10),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      elevation: 5,
                      backgroundColor: green,
                      side: BorderSide(color: green),
                      foregroundColor: white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder:
                            (context) => AlertDialog(
                              title: Text(
                                "Edit Address Success",
                                style: TextStyle(
                                  // fontWeight: FontWeight.w200,
                                  fontSize: fontsm,
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
