import 'package:flutter/material.dart';

class Terms extends StatelessWidget {
  Terms({required this.title, super.key});
  String title;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      appBar: AppBar(backgroundColor: Colors.white, title: const Text("Terms and Conditions")),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.network(
              width: width * 0.85,
              "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/account/terms_conditions.png",
            ),
            const SizedBox(height: 20),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae accumsan dolor. In nec eros vel tellus tincidunt iaculis sed non dui. Vivamus semper, elit id pharetra dignissim, leo felis gravida felis, sed elementum erat neque nec lorem. Curabitur sed neque sit amet mauris pretium mattis commodo at turpis. Ut sit amet velit maximus nunc semper tincidunt. Donec diam nibh, hendrerit in quam non, interdum interdum lectus. In auctor, neque eu varius porta, orci leo rutrum nunc, in sagittis justo eros sed erat. Etiam tellus enim, convallis vel feugiat ut, dapibus in augue. Morbi risus sapien, vulputate eu faucibus eget, scelerisque at nisl. Aenean consequat elementum iaculis. Integer eget est massa. Mauris sem dolor, pellentesque et molestie id, efficitur quis dolor. Phasellus nec mattis ligula, at elementum lacus. Pellentesque sollicitudin sapien erat, at ornare ante hendrerit in. Vestibulum euismod est elit. Mauris pharetra nunc ut egestas iaculis.",
            ),
          ],
        ),
      ),
    );
  }
}
