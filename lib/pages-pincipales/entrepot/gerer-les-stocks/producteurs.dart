import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:gerant/pages-pincipales/entrepot/gerer-les-stocks/producteursRow.dart';

class Producteurs extends StatelessWidget {
  const Producteurs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Producteurs", 
              style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(width: 10,),
            Image.asset("assets/icons/icons8-paramètres-90.png", scale: 4,),
          ],
        ),
        SizedBox(height: 20,),
        ProducteursRow(),
      ],
    );
  }
}