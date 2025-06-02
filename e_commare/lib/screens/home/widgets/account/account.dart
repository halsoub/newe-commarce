import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/screens/home/widgets/account/about.dart';
import 'package:e_commare/screens/home/widgets/account/account_info.dart';
import 'package:e_commare/screens/home/widgets/account/last_seen.dart';
import 'package:e_commare/screens/home/widgets/account/notificatio_setting.dart';
import 'package:e_commare/screens/home/widgets/account/order_list.dart';
import 'package:e_commare/screens/home/widgets/account/payment_method.dart';
import 'package:e_commare/screens/home/widgets/account/set_address.dart';
import 'package:e_commare/screens/home/widgets/account/terms_condition.dart';
import 'package:e_commare/screens/home/widgets/chat.dart';
import 'package:e_commare/screens/home/widgets/notivication_home.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final List<String> _account = [
    "Set Address For Delivery",
    "Order List",
    "Payment Method",
    "Last Seen",
    "Notification Setting",
    "About",
    "Terms and Conditions",
    "Privacy Policy",
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Text("Account", style: TextStyle(fontSize: fontmd, color: black)),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Chat()));
            },
            child: Icon(Icons.email, color: gray, size: fontlg),
          ),
          Badge(
            backgroundColor: lightRed,
            alignment: AlignmentDirectional.center,
            label: Text("8"),

            child: IconButton(
              icon: Icon(Icons.notifications, color: gray, size: fontlg),
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => const Notificationn()));
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              padding: const EdgeInsets.only(top: 50),
              color: const Color.fromRGBO(250, 250, 250, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AccountInfo()),
                            );
                          },
                          child: const CircleAvatar(
                            radius: 80,
                            backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXks6ievebAuaEC_UyicyvgcdihmikwctPidykBcpoQci8PZwhH7ijJnz8Uv9BB1cz2e0&usqp=CAU",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Robert Steven",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) => const AccountInfo()),
                                  );
                                },
                                child: Row(
                                  children: [
                                    Text("Account Information", style: TextStyle(color: gray)),
                                    Icon(Icons.chevron_right, color: gray),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: height * 0.5,
                      // color: Colors.black,
                      child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (index == 0) {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => const SetAdress(),
                                          ),
                                        );
                                      } else if (index == 1) {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => const OrderList(),
                                          ),
                                        );
                                      } else if (index == 2) {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => const PaymentMethod(),
                                          ),
                                        );
                                      } else if (index == 3) {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) => const LastSeen()),
                                        );
                                      } else if (index == 4) {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => const NotificationSetting(),
                                          ),
                                        );
                                      } else if (index == 5) {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) => const About()),
                                        );
                                      } else if (index == 6) {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder:
                                                (context) => Terms(title: "Terms and Condition"),
                                          ),
                                        );
                                      } else if (index == 7) {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => Terms(title: "Privacy Policy"),
                                          ),
                                        );
                                      }
                                      setState(() {});
                                    },
                                    child: Text(
                                      _account[index],
                                      // style: accountTileStyle,
                                    ),
                                  ),
                                  const Icon(Icons.chevron_right),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: _account.length,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.power_settings_new, color: red),
                      Text(" Sign Out", style: TextStyle(color: red)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
