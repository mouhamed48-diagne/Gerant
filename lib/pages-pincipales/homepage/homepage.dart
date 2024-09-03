import "package:flutter/material.dart";
import "package:gerant/pages-pincipales/homepage/itemsEnStock.dart";
import "package:gerant/pages-pincipales/homepage/livraisonsEnCours.dart";
import "package:gerant/pages-pincipales/homepage/top.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Top(),
            SizedBox(height: 20,),
            ItemsEnStock(),
            SizedBox(height: 20,),
            LivraisonsEnCours(),
          ],
        ),
      ),
    );
  }
}