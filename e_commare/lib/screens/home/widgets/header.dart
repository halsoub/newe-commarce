import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/screens/home/home.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<Header> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> _headerImages = [
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/home_banner/1.jpg",
    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/home_banner/3.jpg",

    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/home_banner/2.jpg",

    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/home_banner/4.jpg",

    "https://ijtechnology.net/assets/images/api/devkit/apps/ecommerce/home_banner/5.jpg",
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
      body: Container(
        color: darkWhite,

        height: height * 0.35,
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: height * 0.28,
              width: width,
              child: PageView.builder(
                controller: _pageController,
                itemCount: _headerImages.length,
                onPageChanged: _onPageChanged,
                itemBuilder: (context, index) {
                  return Container(
                    width: width,
                    child: Image.network(_headerImages[index], fit: BoxFit.fill),
                  );
                },
              ),
            ),
            SizedBox(height: height * 0.01),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _headerImages.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: 10,
                    width: _currentPage == index ? 20 : 10,
                    decoration: BoxDecoration(
                      color: _currentPage == index ? green : lightGray,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
