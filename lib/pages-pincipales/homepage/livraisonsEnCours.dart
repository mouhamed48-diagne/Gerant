import "package:flutter/material.dart";
import "package:gerant/constant.dart";
import "package:gerant/pages-pincipales/homepage/livraisonsRow.dart";

class LivraisonsEnCours extends StatelessWidget {
  const LivraisonsEnCours({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Livraisons en cours",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 10,),
        LivraisonsRow(),
      ],
    );
  }
}