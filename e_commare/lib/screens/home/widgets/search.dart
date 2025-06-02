import 'package:e_commare/constants/constants.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final List<String> _img = [
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/1.jpg",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/3.jpg",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/6.jpg",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/8.jpg",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/3.jpg",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/3.jpg",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/6.jpg",
  ];

  final List<String> _lastSearch = ["adidas shirt", "led tv", "apple mac", "iphone", "asus"];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromRGBO(239, 239, 239, 1),
            ),
            width: width * 0.85,
            child: Row(
              children: [
                Icon(Icons.search, color: lightGray),
                Container(
                  padding: const EdgeInsets.only(top: 12),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  width: width * 0.75,
                  child: TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(borderSide: BorderSide.none),

                      hintText: "Search Product",
                      hintStyle: TextStyle(fontSize: fontsm, color: Colors.black45),
                      fillColor: const Color.fromRGBO(238, 238, 238, 1),
                      filled: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: height,
        color: darkWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            spacex,
            spacex,
            Container(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                "Last Seen Product",
                style: TextStyle(fontSize: fontmd, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: width,
                height: height * 0.12,
                color: darkWhite,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: height * 0.20,
                      width: width * 0.25,
                      margin: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(color: white),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(_img[index], fit: BoxFit.cover),
                      ),
                    );
                  },
                  itemCount: _img.length,
                ),
              ),
            ),
            spacex,
            spacex,
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Text(
                "Last search",
                style: TextStyle(fontSize: fontmd, fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return _getLastSearch(_lastSearch[index]);
                },
                itemCount: _lastSearch.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _getLastSearch(String last) {
    return ListTile(
      title: Text(
        last,
        style: TextStyle(fontSize: fontsm, color: const Color.fromRGBO(81, 81, 81, 1)),
      ),
      leading: Icon(Icons.schedule, color: lightGray, size: fontsm),
      trailing: Icon(Icons.close, color: lightGray, size: fontsm),
    );
  }
}
