import 'package:flutter/material.dart';
import 'package:my_blink/repository/Screens/Cart/Cart.dart';
import 'package:my_blink/repository/Screens/Category/CategoryScreen.dart';
import 'package:my_blink/repository/Screens/Home/homeScreen.dart';
import 'package:my_blink/repository/Screens/Print/PrintScreen.dart';
import 'package:my_blink/repository/widgets/uihelper.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> Pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: Pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Uihelper.CustomImage(
                    img: "home.png", height: 30, width: 30),
                label: "Home"),
            BottomNavigationBarItem(
                icon:
                    Uihelper.CustomImage(img: "bag.png", height: 30, width: 30),
                label: "Cart"),
            BottomNavigationBarItem(
                icon: Uihelper.CustomImage(
                    img: "menu.png", height: 30, width: 30),
                label: "Menu"),
            BottomNavigationBarItem(
                icon: Uihelper.CustomImage(
                    img: "printer.png", height: 30, width: 30),
                label: "Printer")
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ));
  }
}
