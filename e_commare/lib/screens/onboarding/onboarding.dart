import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/screens/authentication/login.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, dynamic>> onboardingPages = [
    {
      "title": "Choose Product",
      "description": "Search abd browse the product you want to buy at iJShop",
      "image":
          "https://img.freepik.com/free-vector/online-wishes-list-concept-illustration_114360-3900.jpg?uid=R155090816&ga=GA1.1.203313642.1720388050&semt=ais_hybrid&w=740",
    },
    {
      "title": "Add to Cart and Pay",
      "description":
          " Add the product to shopping cart, choose delivery and then pay with your preferences payment",
      "image":
          "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/onboarding/cart.png",
    },
    {
      "title": "Delivery",
      "description": "Wait until the product that has been purchased comes to the house",
      "image":
          "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/onboarding/delivery.png",
    },
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkWhite,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onboardingPages.length,
              onPageChanged: _onPageChanged,
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  height: height * 0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: height * 0.6,
                        width: width,
                        child: Image.network(onboardingPages[index]['image'], fit: BoxFit.fill),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        onboardingPages[index]['title'],
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: black),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        onboardingPages[index]['description'],
                        style: const TextStyle(fontSize: 16, color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardingPages.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 10,
                  width: _currentPage == index ? 20 : 10,
                  decoration: BoxDecoration(
                    color: _currentPage == index ? blue : Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    if (_currentPage == onboardingPages.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    }
                  },
                  child: Text(
                    _currentPage == onboardingPages.length - 1 ? "Get Started" : "Next",
                    style: TextStyle(color: blue, fontWeight: FontWeight.w400, fontSize: fontmd),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
