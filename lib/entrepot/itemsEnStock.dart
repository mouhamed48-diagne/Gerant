import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:gerant/entrepot/itemsEnStockColumn.dart';

class ItemsEnStockCol extends StatelessWidget {
  const ItemsEnStockCol({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("assets/icons/icons8-colis-ouvert-90.png", scale: 3, color: teraOrange,),
                SizedBox(width: 10,),
                Text("Items en stock", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 16),),
              ],
            ),
          ],
        ),
        SizedBox(height: 10,),
        ItemsEnStockColumn(),
      ],
    );
  }
}