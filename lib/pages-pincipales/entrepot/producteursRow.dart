import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:gerant/pages-pincipales/entrepot/producteursItem.dart';

class ProducteursRow extends StatefulWidget {
  const ProducteursRow({super.key});

  @override
  State<ProducteursRow> createState() => _ProducteursRowState();
}

class _ProducteursRowState extends State<ProducteursRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      width: 356,
      height: 278,
      decoration: BoxDecoration(
        color: teraGrey
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ProducteursItem(
              name: "Ibrahima Dia",
              listeItems: [
                ProductItem(productType: "carotte", quantity: 50),
                ProductItem(productType: "pomme de terre", quantity: 20),
                ProductItem(productType: "arachide", quantity: 40),
                ProductItem(productType: "arachide", quantity: 40),
                ]),
            ProducteursItem(
              name: "Ibrahima Dia",
              listeItems: [
                ProductItem(productType: "carotte", quantity: 50),
                ProductItem(productType: "pomme de terre", quantity: 20),
                ProductItem(productType: "arachide", quantity: 40),
                ProductItem(productType: "arachide", quantity: 40),
                ]),
            ProducteursItem(
              name: "Ibrahima Dia",
              listeItems: [
                ProductItem(productType: "carotte", quantity: 50),
                ProductItem(productType: "pomme de terre", quantity: 20),
                ProductItem(productType: "arachide", quantity: 40),
                ProductItem(productType: "arachide", quantity: 40),
                ]),
            ProducteursItem(
              name: "Ibrahima Dia",
              listeItems: [
                ProductItem(productType: "carotte", quantity: 50),
                ProductItem(productType: "pomme de terre", quantity: 20),
                ProductItem(productType: "arachide", quantity: 40),
                ProductItem(productType: "arachide", quantity: 40),
                ]),
          ],
        ),
      ),
    );
  }
}