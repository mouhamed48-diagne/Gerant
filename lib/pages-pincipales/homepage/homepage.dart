import "package:flutter/material.dart";
import "package:gerant/pages-pincipales/homepage/evolutionDesPrix.dart";
import "package:gerant/pages-pincipales/homepage/infosEntrepot.dart";
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
            SizedBox(height: 10,),
            ItemsEnStock(),
            SizedBox(height: 20,),
            LivraisonsEnCours(),
            SizedBox(height: 20,),
            EvolutionDesPrix(),
            SizedBox(height: 20,),
            InfosEntrepot(),
          ],
        ),
      ),
    );
  }
}