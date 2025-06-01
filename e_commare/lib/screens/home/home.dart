import 'package:e_commare/screens/home/responsive/larg_screen.dart';
import 'package:e_commare/screens/home/responsive/small_screens.dart';
import 'package:e_commare/screens/home/widgets/account/account.dart';
import 'package:e_commare/screens/home/widgets/appbar.dart';
import 'package:e_commare/screens/home/widgets/cart/cart.dart';
import 'package:e_commare/screens/home/widgets/category.dart';
import 'package:e_commare/screens/home/widgets/classification.dart';
import 'package:e_commare/screens/home/widgets/flash_sale.dart';
import 'package:e_commare/screens/home/widgets/wishlist/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/screens/home/widgets/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var mediaQueryData = MediaQueryData();
    var orientation = mediaQueryData.orientation;
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkWhite,

        body:
            _index == 0
                ? SmallScreens()
                // ? LayoutBuilder(
                //   builder: (context, constraints) {
                //     if (orientation == Orientation.landscape) {
                //       width = mediaQueryData.size.height;
                //     } else {
                //       width = mediaQueryData.size.width;
                //     }
                //     if (width >= 950) {
                //       return LargScreen();
                //     }
                //     if (width >= 600) {
                //       return SmallScreens();
                //     }
                //     return SmallScreens();
                //   },
                // )
                : _index == 1
                ? Wishlist()
                : _index == 2
                ? CartBottom()
                : _index == 3
                ? Account()
                : null,

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },

          type: BottomNavigationBarType.fixed,
          selectedItemColor: green,
          backgroundColor: darkWhite,
          unselectedItemColor: lightGray,

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Wishlist'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ],
        ),
      ),
    );
  }
}
