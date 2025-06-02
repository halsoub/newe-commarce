import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/screens/home/widgets/account/edit_inf.dart';
import 'package:flutter/material.dart';

class AccountInfo extends StatefulWidget {
  const AccountInfo({super.key});

  @override
  State<AccountInfo> createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      appBar: AppBar(title: const Text("Account Information"), backgroundColor: white),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 25),
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXks6ievebAuaEC_UyicyvgcdihmikwctPidykBcpoQci8PZwhH7ijJnz8Uv9BB1cz2e0&usqp=CAU",
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: width,
                  height: height * 0.08,
                  color: const Color.fromRGBO(242, 242, 242, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Name", style: TextStyle(color: Colors.black54, fontSize: 15)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Robert",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder:
                                        (context) => const EditName(
                                          title: "Edit Name",
                                          lable: "Name",
                                          lableText: "Robert Steven",
                                        ),
                                  ),
                                );
                              },
                              child: const Text(
                                "Edit",
                                style: TextStyle(color: Colors.green, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: width,
                  height: height * 0.08,
                  color: const Color.fromRGBO(242, 242, 242, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Email",
                              style: TextStyle(color: Colors.black54, fontSize: 15),
                            ),
                            const SizedBox(width: 5),
                            Container(
                              color: const Color.fromARGB(255, 28, 118, 191),
                              width: 50,
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text(
                                "Verified",
                                style: TextStyle(color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "robert.steven@ijtechnology.net",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder:
                                        (context) => const EditName(
                                          title: "Edit Email",
                                          lable: "Email",
                                          lableText: "robert.steven@ijtechnology.net",
                                        ),
                                  ),
                                );
                              },
                              child: const Text(
                                "Edit",
                                style: TextStyle(color: Colors.green, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: width,
                  height: height * 0.08,
                  color: const Color.fromRGBO(242, 242, 242, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Phone Number",
                              style: TextStyle(color: Colors.black54, fontSize: 15),
                            ),
                            const SizedBox(width: 5),
                            Container(
                              color: const Color.fromARGB(255, 28, 118, 191),
                              width: 50,
                              height: 20,
                              alignment: Alignment.center,
                              child: const Text(
                                "Verified",
                                style: TextStyle(color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "081118889999",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder:
                                        (context) => const EditName(
                                          title: "Edit Phone Number",
                                          lable: "Phone Number",
                                          lableText: "081118889999",
                                        ),
                                  ),
                                );
                              },
                              child: Text(
                                "Edit",
                                style: TextStyle(color: green, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 155,
              top: 25,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: const Icon(Icons.edit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
