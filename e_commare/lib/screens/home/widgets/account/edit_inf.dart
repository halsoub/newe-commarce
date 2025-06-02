import 'package:e_commare/constants/constants.dart';
import 'package:flutter/material.dart';

class EditName extends StatefulWidget {
  const EditName({super.key, required this.title, required this.lable, required this.lableText});
  final String title;
  final String lable;
  final String lableText;
  @override
  State<EditName> createState() => _EditNameState();
}

class _EditNameState extends State<EditName> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 240, 240, 1),
      appBar: AppBar(title: Text(widget.title), backgroundColor: white),
      body: SizedBox(
        width: width,
        height: height,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SizedBox(
                width: width,
                height: height * 0.12,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: widget.lable,
                    hintText: "Robert Steven",

                    // enabledBorder: UnderlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.green),
                    // ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 3),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: width,
                height: 30,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    elevation: 5,
                    side: BorderSide(color: green),
                    backgroundColor: green,
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
                              "Edit Information Success",
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
                                side: BorderSide(color: green),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                                setState(() {});
                              },
                              child: const Text("OK"),
                            ),
                          ),
                    );
                  },
                  child: const Text("Save", style: TextStyle(fontWeight: FontWeight.w700)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
