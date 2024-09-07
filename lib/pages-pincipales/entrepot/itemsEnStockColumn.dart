import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:gerant/pages-pincipales/entrepot/itemsEnStockColumnItem.dart';

List <ItemsEnStockColumnItem> items = [
  ItemsEnStockColumnItem(productType: "carotte", quantite: 50, etat: "Bon etat", qPlus: 3, qMoins: 10),
  ItemsEnStockColumnItem(productType: "carotte", quantite: 50, etat: "Bon etat", qPlus: 3, qMoins: 10),
  ItemsEnStockColumnItem(productType: "carotte", quantite: 50, etat: "Bon etat", qPlus: 3, qMoins: 10),
  ItemsEnStockColumnItem(productType: "carotte", quantite: 50, etat: "Bon etat", qPlus: 3, qMoins: 10),
];

class ItemsEnStockColumn extends StatefulWidget {
  const ItemsEnStockColumn({super.key});

  @override
  State<ItemsEnStockColumn> createState() => _ItemsEnStockColumnState();
}

class _ItemsEnStockColumnState extends State<ItemsEnStockColumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
      width: 338,
      height: 100 + items.length*100,
      decoration: BoxDecoration(
        color: teraYellow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: items
      ),
    );
  }
}

