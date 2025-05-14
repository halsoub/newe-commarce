import 'package:e_commare/constants/constants.dart';
import 'package:flutter/material.dart';

class Notificationn extends StatefulWidget {
  const Notificationn({super.key});

  @override
  State<Notificationn> createState() => _NotificationnState();
}

class _NotificationnState extends State<Notificationn> {
  final List<note> _note = [];

  @override
  void initState() {
    note note1 = note("Order Completed", "11 Sep 2019 08:4", "Yor order is completed");
    note note2 = note("Order Arrived", "11 Sep 2019 08:4", "Yor order has Arrived");
    note note3 = note(
      "Flash Sale",
      "11 Sep 2019 08:4",
      "Hi Robert Steven, Flash Sale is open in 10 minutes.",
    );
    note note4 = note("Order Sent", "11 Sep 2019 08:4", "Yor order is being shipped by courier");
    note note5 = note(
      "Ready to pickup",
      "11 Sep 2019 08:4",
      "Yor order isready to be picked up by the courier",
    );
    note note6 = note(
      "Trending Product",
      "11 Sep 2019 08:4",
      "Hi Robert Steven,there is a trending product for you",
    );
    note note7 = note("order Processed", "11 Sep 2019 08:4", "Yor order is being processed");
    note note8 = note("Order Completed", "11 Sep 2019 08:4", "Yor order is completed");
    note note9 = note("Payment Received", "11 Sep 2019 08:4", "Payment Received");
    note note10 = note("Wait for Payment", "11 Sep 2019 08:4", "We are waiting for your Payment");
    note note11 = note("Order placed", "11 Sep 2019 08:4", "We have received your order");

    _note.add(note1);
    _note.add(note2);
    _note.add(note3);
    _note.add(note4);
    _note.add(note5);
    _note.add(note6);
    _note.add(note7);
    _note.add(note8);
    _note.add(note9);
    _note.add(note10);
    _note.add(note11);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkWhite,
        appBar: AppBar(backgroundColor: white, title: const Text("Notification")),
        body: SingleChildScrollView(
          child: Container(
            width: width,
            height: height,
            color: darkWhite,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemBuilder: (context, index) {
                return Container(
                  width: width,
                  height: height * 0.15,
                  color: darkWhite,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _note[index].title,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: fontmd,
                            color: const Color.fromRGBO(81, 81, 81, 1),
                          ),
                        ),
                        Text(
                          _note[index].date,
                          overflow: TextOverflow.clip,
                          style: TextStyle(color: lightGray, fontSize: fontsm),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          _note[index].subtitle,
                          style: TextStyle(color: Colors.black54, fontSize: fontsm),
                          overflow: TextOverflow.clip,
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: _note.length,
            ),
          ),
        ),
      ),
    );
  }
}

class note {
  String title;
  String date;
  String subtitle;
  note(this.title, this.date, this.subtitle);
}
