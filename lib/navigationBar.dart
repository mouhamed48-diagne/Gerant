import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:gerant/entrepot/entrepot.dart';
import 'package:gerant/pages-pincipales/homepage/homepage.dart';
import 'package:gerant/ventes/ventes.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 1;
  List <Widget> body = [
    Entrepot(),
    HomePage(),
    Ventes(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
        ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: BorderDirectional(top: BorderSide(color: Colors.black, width: 2))
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (int newIndex){
            setState(() {
              _currentIndex = newIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: "",
              icon: Image.asset("assets/icons/icons8-vendre-les-stock-90.png", scale: 3,),
              activeIcon: Image.asset("assets/icons/icons8-vendre-les-stock-90.png", color: teraOrange, scale: 3),
              ),
            BottomNavigationBarItem(
              label: "",
              icon: Image.asset("assets/icons/icons8-page-d’accueil-90-var.png", scale: 3),
              activeIcon: Image.asset("assets/icons/icons8-page-d’accueil-90-var.png", color: teraOrange, scale: 3),
              ),
            BottomNavigationBarItem(
              label: "",
              icon: Image.asset("assets/icons/icons8-boutique-90 (1).png", scale: 3),
              activeIcon: Image.asset("assets/icons/icons8-boutique-90 (1).png", color: teraOrange, scale: 3,),
              ),
          ],
        ),
      ),
    );
  }
}