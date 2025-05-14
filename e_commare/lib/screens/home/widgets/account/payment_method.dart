import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/screens/home/widgets/account/add_payment.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkWhite,
      appBar: AppBar(title: const Text("Payment Method"), backgroundColor: white),
      body: Container(
        color: darkWhite,
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Default Payment Method",
                  style: TextStyle(color: lightBlack, fontSize: fontmd),
                ),
                const SizedBox(height: 5),
                Container(
                  width: width,
                  height: height * 0.25,
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    border: Border.all(color: Colors.black45),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payment Method",
                          style: TextStyle(color: Colors.black45, fontSize: 15),
                        ),
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
                              "  Visa Card ending in 4392",
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Billing Address",
                          style: TextStyle(color: Colors.black45, fontSize: 15),
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry,",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text("Phone Number", style: TextStyle(color: Colors.black45, fontSize: 15)),
                        Text("081118888999", style: TextStyle(color: Colors.black, fontSize: 15)),
                      ],
                    ),
                  ),
                ),
                spacex,
                spacex,
                SizedBox(
                  width: width,
                  height: height * 0.50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "List of Payment Method",
                        style: TextStyle(color: lightBlack, fontSize: fontmd),
                      ),
                      const Divider(),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columns: [
                            DataColumn(
                              label: Text(
                                "Credit Card",
                                style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontmd),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "Name On Card",
                                style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontmd),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "Expires on",
                                style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontmd),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "Action",
                                style: TextStyle(fontWeight: FontWeight.w600, fontSize: fontmd),
                              ),
                            ),
                          ],
                          rows: [
                            DataRow(
                              cells: [
                                DataCell(
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: height * 0.02,
                                        width: width * 0.08,
                                        child: Image.network(
                                          "https://ijtechnology.net/demo/devkit/assets/assets/images/visa.png",
                                        ),
                                      ),
                                      Text(" visa card ending in 4392"),
                                    ],
                                  ),
                                ),
                                const DataCell(Text("Robert Steven")),
                                const DataCell(Text("04/2023")),
                                DataCell(
                                  Row(
                                    children: [
                                      Container(
                                        // padding: EdgeInsets.all(2),
                                        color: blue,
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
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder:
                                                  (context) =>
                                                      AddPayment(title: "Edit Payment Method"),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          "Edit",
                                          style: TextStyle(color: blue, fontSize: 15),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: const Text("Delete Payment Method"),
                                                content: const Text(
                                                  "Are you sure to delete this paymet method ?",
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
                                        child: Text(
                                          "Delete",
                                          style: TextStyle(color: blue, fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: height * 0.02,
                                        width: width * 0.08,
                                        child: Image.network(
                                          "https://ijtechnology.net/demo/devkit/assets/assets/images/mastercard.png",
                                        ),
                                      ),
                                      Text("MasterCard ending in 5309"),
                                    ],
                                  ),
                                ),
                                const DataCell(Text("Robert Steven")),
                                const DataCell(Text("07/2022")),
                                DataCell(
                                  Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: const Text("Make Default"),
                                                content: const Text(
                                                  "Are you sure to make this card as a default payment ?",
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
                                                            title: const Text("Success"),
                                                            actions: [
                                                              Center(
                                                                child: ElevatedButton(
                                                                  onPressed: () {
                                                                    Navigator.of(context).pop();
                                                                  },
                                                                  style: ElevatedButton.styleFrom(
                                                                    backgroundColor: green,
                                                                  ),
                                                                  child: Text(
                                                                    "Ok",
                                                                    style: TextStyle(
                                                                      color: white,
                                                                      fontWeight: FontWeight.w600,
                                                                      fontSize: 15,
                                                                    ),
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
                                          "Make Default",
                                          style: TextStyle(color: blue, fontSize: 15),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder:
                                                  (context) =>
                                                      AddPayment(title: "Edit Payment Method"),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          "Edit",
                                          style: TextStyle(color: blue, fontSize: 15),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: const Text("Delete Payment Method"),
                                                content: const Text(
                                                  "Are you sure to delete this paymet method ?",
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
                                        child: Text(
                                          "Delete",
                                          style: TextStyle(color: blue, fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: [
                                DataCell(
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: height * 0.02,
                                        width: width * 0.08,
                                        child: Image.network(
                                          "https://ijtechnology.net/demo/devkit/assets/assets/images/visa.png",
                                        ),
                                      ),
                                      Text(" visa card ending in 2285"),
                                    ],
                                  ),
                                ),
                                const DataCell(Text("Robert Steven")),
                                DataCell(Text("11/2021", style: TextStyle(fontSize: fontsm))),
                                DataCell(
                                  Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: const Text("Make Default"),
                                                content: const Text(
                                                  "Are you sure to make this card as a default payment ?",
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
                                                            title: const Text("Success"),
                                                            actions: [
                                                              Center(
                                                                child: ElevatedButton(
                                                                  onPressed: () {
                                                                    Navigator.of(context).pop();
                                                                  },
                                                                  style: ElevatedButton.styleFrom(
                                                                    backgroundColor: green,
                                                                  ),
                                                                  child: Text(
                                                                    "Ok",
                                                                    style: TextStyle(
                                                                      color: white,
                                                                      fontWeight: FontWeight.w600,
                                                                      fontSize: 15,
                                                                    ),
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
                                          "Make Default",
                                          style: TextStyle(color: blue, fontSize: 15),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder:
                                                  (context) =>
                                                      AddPayment(title: "Edit Payment Method"),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          "Edit",
                                          style: TextStyle(color: blue, fontSize: 15),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: const Text("Delete Payment Method"),
                                                content: const Text(
                                                  "Are you sure to delete this paymet method ?",
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
                                        child: Text(
                                          "Delete",
                                          style: TextStyle(color: blue, fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      spacex,
                      spacex,
                      Container(
                        width: width,
                        height: 40,
                        margin: const EdgeInsets.all(10),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            elevation: 5,
                            // backgroundColor: Colors.green,
                            side: BorderSide(color: blue),
                            foregroundColor: blue,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => AddPayment(title: "Add Payment Method "),
                              ),
                            );
                          },
                          child: const Text(
                            "Add a card",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
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

class payment {
  String cardName;
  String nameOnCard;
  String expireson;
  String? action;
  payment(this.cardName, this.nameOnCard, this.expireson);
}
