import 'package:e_commare/constants/constants.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkWhite,
      appBar: AppBar(backgroundColor: white, title: const Text("Chat")),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              const Text("9 Sep 2019"),
              _getRowright("Good morning", "13:59", width * 0.68, height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.network(
                    width: 100,
                    height: 100,
                    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/80.jpg",
                  ),
                ],
              ),
              _getRowright(
                "I want to ask about the samsung tv product",
                "13:59",
                width * 0.78,
                height * 0.06,
              ),
              _getRowright(
                "Is the samsung LED TV 32 Inch is still on sale",
                "14:1",
                width * 0.80,
                height * 0.06,
              ),
              _getRowlift(
                "Hello,thank you for contacting us",
                "14:18",
                width * 0.80,
                height * 0.04,
              ),
              _getRowlift(
                "We are sorry, but the promotion for samsung LED TV32 Inch has ended. Don't forget to turn on notification setting for promation do you will get the news about our prouduct",
                "14:20",
                width * 0.80,
                height * 0.16,
              ),
              _getRowright(
                "Ok,thank you for your informatin",
                "14:22",
                width * 0.72,
                height * 0.04,
              ),
              Text("13 Sep 2019", style: TextStyle(fontSize: fontxs, color: lightGray)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.network(
                    width: 100,
                    height: 100,
                    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/product/21.jpg",
                  ),
                ],
              ),
              _getRowright(
                "Hi,Is Adidas Polo Shirt size L is ready ? For the black color.",
                "08:58",
                width * 0.90,
                height * 0.08,
              ),
              _getRowright("I want to order for2 pcs ", "09:00", width * 0.70, height * 0.06),
              _getRowright(
                "And can I change it if the size doesn't fit my body?",
                "09:00",
                width * 0.70,
                height * 0.06,
              ),
              _getRowlift(
                "Hello, good moring.The product is ready and you can change if size is not fit your body",
                "09:14",
                width * 0.69,
                height * 0.12,
              ),
              Positioned(
                bottom: 10,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: white,
                  height: height * 0.10,
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(8),
                        height: height * 10,
                        width: width * 0.75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: darkWhite,
                        ),
                        child: Text("Write Message", style: TextStyle(color: lightBlack)),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: blue,
                        ),
                        child: Icon(Icons.send, color: white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _getRowright(String text, String date, double width, double height) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          // height: height,
          // width: width,
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.zero,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: width * 0.75,
                child: Text(text, style: TextStyle(fontSize: fontsm), overflow: TextOverflow.clip),
              ),
              Icon(Icons.done_all, color: green, size: fontxs),
              const SizedBox(width: 4),
              Text(date, style: TextStyle(fontSize: fontxs, color: lightGray)),
            ],
          ),
        ),
      ],
    );
  }

  _getRowlift(String text, String date, double width, double height) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          // width: width,
          // height: height,
          decoration: BoxDecoration(
            // color: blue,
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.zero,
              bottomRight: Radius.circular(10),
            ),
          ),
          margin: const EdgeInsets.all(6),
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                width: width * 0.8,
                child: Text(text, style: TextStyle(fontSize: fontsm), overflow: TextOverflow.clip),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8, left: 10),
                child: Text(date, style: TextStyle(fontSize: fontxs, color: lightGray)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
