import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      appBar: AppBar(backgroundColor: Colors.white, title: const Text("About")),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: height * 0.35),
            const Text("E-Commerce", style: TextStyle(color: Colors.green, fontSize: 50)),
            const SizedBox(height: 50),
            const Text("App Version", style: TextStyle(color: Colors.black54, fontSize: 18)),
            const Text("17.1.0", style: TextStyle(color: Colors.black54, fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
