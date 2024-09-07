import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:gerant/pages-pincipales/entrepot/gerer-les-stocks/livraisonEnCours.dart';
import 'package:gerant/pages-pincipales/entrepot/gerer-les-stocks/produitsItem.dart';

class Produits extends StatelessWidget {
  const Produits({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Produits", 
              style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(width: 10,),
            // Image.asset("assets/icons/icons8-paramètres-90.png", scale: 4,),
          ],
        ),
        SizedBox(height: 10,),
        ProduitsItemRow(),
      ],
    );
  }
}