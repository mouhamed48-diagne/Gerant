import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:gerant/pages-pincipales/entrepot/itemsEnStock.dart';
import 'package:gerant/pages-pincipales/entrepot/producteurs.dart';
import 'package:gerant/pages-pincipales/entrepot/topTitle.dart';
import 'package:gerant/pages-pincipales/homepage/itemsEnStock.dart';

class Entrepot extends StatelessWidget {
  const Entrepot({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopTitle(),
                SizedBox(height: 30,),
                Producteurs(),
                SizedBox(height: 30,),
                ItemsEnStockCol(),
              ],
            ),
          ),
        ),
    ));
  }
}