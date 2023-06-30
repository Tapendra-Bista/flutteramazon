import 'package:amazon/cart/card.dart';
import 'package:amazon/constans/cons.dart';
import 'package:amazon/home/home.dart';
import 'package:amazon/person/person.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class Viewpageuser extends StatefulWidget {
  const Viewpageuser({super.key});

  @override
  State<Viewpageuser> createState() => _ViewpageuserState();
}

class _ViewpageuserState extends State<Viewpageuser> {
  List<Widget> items = [const Homepage(), const Personpage(), const Cardpage()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: items[index],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          currentIndex: index,
          selectedItemColor: Globalvariable.selectednavbarcolor,
          unselectedItemColor: Globalvariable.unselectednavbarcolor,
          backgroundColor: Globalvariable.backgroundcolor,
          iconSize: 28,
          items: [
            // for home
            BottomNavigationBarItem(
                label: "",
                icon: Container(
                  width: 42,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              color: index == 0
                                  ? Globalvariable.selectednavbarcolor
                                  : Globalvariable.backgroundcolor,
                              width: 5))),
                  child: const Icon(Icons.home_outlined),
                )),
            // for account
            BottomNavigationBarItem(
                label: "",
                icon: Container(
                  width: 42,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              color: index == 1
                                  ? Globalvariable.selectednavbarcolor
                                  : Globalvariable.backgroundcolor,
                              width: 5))),
                  child: const Icon(Icons.person_outline),
                )),
            // for card
            BottomNavigationBarItem(
                label: "",
                icon: Container(
                  width: 42,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              color: index == 2
                                  ? Globalvariable.selectednavbarcolor
                                  : Globalvariable.backgroundcolor,
                              width: 5))),
                  child:cartproductnumber==null||cartproductnumber==0
                      ? const Icon(Icons.shopping_cart_outlined)
                      : badges.Badge(
                          badgeContent: Text(cartproductnumber.toString()),
                          badgeStyle: const badges.BadgeStyle(
                              badgeColor: Colors.transparent),
                          child: const Icon(Icons.shopping_cart_outlined)),
                ))
          ]),
    );
  }
}
