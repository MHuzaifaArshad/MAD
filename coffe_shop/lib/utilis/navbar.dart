import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:coffe_shop/pages/home.dart';
import 'package:coffe_shop/pages/detail.dart';
import 'package:coffe_shop/pages/order.dart';
import 'package:coffe_shop/pages/delivery.dart';

class Nav_bar extends StatefulWidget {
  @override
  _Nav_barState createState() => _Nav_barState();
}

class _Nav_barState extends State<Nav_bar> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    Home(),
    Order(),
    Detail(),
    Delivery(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 99,
      width: 375,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          activeColor: const Color(0xffC67C4E),
          inactiveColor: const Color(0xffA9A9A9),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.cart), label: "Orders"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.info), label: "Details"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.location), label: "Delivery"),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        tabBuilder: (context, index) {
          return CupertinoPageScaffold(
            child: _pages[index],
          );
        },
      ),
    );
  }
}
