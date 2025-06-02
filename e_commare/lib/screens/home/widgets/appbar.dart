import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/screens/home/widgets/chat.dart';
import 'package:e_commare/screens/home/widgets/header.dart';
import 'package:e_commare/screens/home/widgets/notivication_home.dart';
import 'package:e_commare/screens/home/widgets/search.dart';
import 'package:flutter/material.dart';

class MyAppbar extends StatefulWidget {
  const MyAppbar({super.key});

  @override
  State<MyAppbar> createState() => _MyAppbarState();
}

class _MyAppbarState extends State<MyAppbar> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkWhite,
        body: Expanded(
          flex: 1,
          child: Container(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: darkWhite,
                  snap: true,
                  pinned: false,
                  floating: true,
                  flexibleSpace: FlexibleSpaceBar(centerTitle: false, background: Header()),
                  expandedHeight: height * 0.35 - 1,

                  actions: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Search()));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        height: height * 0.04,
                        width: width * 0.7,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search_outlined, color: lightGray),
                            Text("  Search Product", style: TextStyle(color: lightGray)),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.mail, color: white, size: fontxl),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Chat()));
                      },
                    ),
                    Badge(
                      backgroundColor: lightRed,
                      alignment: AlignmentDirectional.center,
                      label: Text("3"),

                      child: IconButton(
                        icon: Icon(Icons.notifications, color: white, size: fontxl),
                        onPressed: () {
                          Navigator.of(
                            context,
                          ).push(MaterialPageRoute(builder: (context) => Notificationn()));
                        },
                      ),
                    ),
                  ],
                ),

                // SliverList(delegate: SliverChildListDelegate([Expanded(
                //   child: Classification(),

                //   ),],),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
