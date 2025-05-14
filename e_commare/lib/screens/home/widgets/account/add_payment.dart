import 'package:e_commare/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:datepicker_dropdown/order_format.dart';

class AddPayment extends StatefulWidget {
  AddPayment({required this.title, super.key});
  String title;
  @override
  State<AddPayment> createState() => _AddPaymentState();
}

class _AddPaymentState extends State<AddPayment> {
  int _selectedMonth = 10;
  int _selectedYear = 2020;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkWhite,
      appBar: AppBar(backgroundColor: Colors.white, title: const Text("Add Pament Method")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Credit Card Information", style: TextStyle(fontWeight: FontWeight.w800)),
              const SizedBox(height: 10),
              const Row(
                children: [
                  // FaIcon(FontAwesomeIcons.ccVisa),
                  // SizedBox(width: 5),
                  // FaIcon(FontAwesomeIcons.ccMastercard),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Cradit Card Number*",

                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: lightGray)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: green, width: 2),
                  ),
                ),
              ),
              spacex,
              TextField(
                decoration: InputDecoration(
                  labelText: "Name of Cardholder*",

                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: lightGray)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: green, width: 2),
                  ),
                ),
              ),
              spacex,
              const Text("Expired Date *"),
              SizedBox(
                width: width * 0.60,
                child: DropdownDatePicker(
                  locale: "en",
                  dateformatorder: OrderFormat.MYD, // default is myd

                  isDropdownHideUnderline: false, // optional
                  isFormValidator: true, // optional
                  startYear: 2020, // optional
                  endYear: 2025, // optional
                  width: 5, // optional

                  showDay: false,
                  selectedMonth: _selectedMonth, // optional
                  selectedYear: _selectedYear, // optional
                  onChangedDay: (value) {
                    print('onChangedDay: $value');
                  },
                  onChangedMonth: (value) {
                    _selectedMonth = int.parse(value!);
                    print('onChangedMonth: $value');
                  },
                  onChangedYear: (value) {
                    _selectedYear = int.parse(value!);
                    print('onChangedYear: $value');
                  },
                ),
              ),
              const SizedBox(height: 35),
              const Text(
                "Billing Information",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Full Name *",

                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: lightGray)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: green, width: 2),
                  ),
                ),
              ),
              spacex,
              TextField(
                decoration: InputDecoration(
                  labelText: "Company Name",

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
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: lightGray)),

                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                ),
              ),
              spacex,
              TextField(
                decoration: InputDecoration(
                  labelText: "City *",

                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: lightGray)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                ),
              ),
              spacex,
              TextField(
                decoration: InputDecoration(
                  labelText: "State/Province/Region *",

                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: lightGray)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                ),
              ),
              spacex,
              TextField(
                decoration: InputDecoration(
                  labelText: "Postal Code *",

                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: lightGray)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                ),
              ),
              spacex,
              TextField(
                decoration: InputDecoration(
                  labelText: "Recipient's Phone Number",

                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: lightGray)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
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
                    // side: BorderSide(color: Colors.blueAccent),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: const Text("Add Payment Method Success"),
                          actions: [
                            Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                style: ElevatedButton.styleFrom(backgroundColor: green),
                                child: Text(
                                  "Ok",
                                  style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: fontsm,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text("Save"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
