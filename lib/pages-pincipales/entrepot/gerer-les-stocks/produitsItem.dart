import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:gerant/pages-pincipales/entrepot/gerer-les-stocks/modifier-les-stocks/modifierLesStocks.dart';

class ProduitsItemRow extends StatefulWidget {
  const ProduitsItemRow({super.key});

  @override
  State<ProduitsItemRow> createState() => ProduitsItemRowState();
}

class ProduitsItemRowState extends State<ProduitsItemRow> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProduitsItem(itemType: "carotte"),
          ProduitsItem(itemType: "pomme de terre"),
          ProduitsItem(itemType: "arachide"),
          ProduitsItem(itemType: "arachide"),
          ProduitsItem(itemType: "arachide"),
          ProduitsItem(itemType: "arachide"),
          ProduitsItem(itemType: "arachide"),
        ],
      ),
    );
  }
}

class ProduitsItem extends StatelessWidget {
  final String itemType;
   ProduitsItem({
    super.key,
    required this.itemType,
    });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context, MaterialPageRoute(
            builder: (context) => ModifierLesStocks()
            )
          );
      },
      child: Container(
        margin: EdgeInsets.only(left: 10),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: teraDark,
        ),
      child: ImageProduct(itemType: itemType, imageScale: 15,),
      ),
    );
  }
}