import "package:flutter/material.dart";
import 'package:gerant/constant.dart';
import 'package:gerant/pages-pincipales/homepage/itemRow.dart';

class ItemsEnStock extends StatelessWidget {
  const ItemsEnStock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Items en stock",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 10,),
        ItemRow(),
      ],
    );
  }
}