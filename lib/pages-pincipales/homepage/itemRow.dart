import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';

class ItemRow extends StatefulWidget {
  const ItemRow({super.key});

  @override
  State<ItemRow> createState() => _ItemRowState();
}

class _ItemRowState extends State<ItemRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            width: 350,
            height: 80,
            decoration: BoxDecoration(
              color: teraGrey
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Item(itemType: "carotte", itemInfo: Container()),
                  Item(itemType: "pomme de terre", itemInfo: Container()),
                  Item(itemType: "arachide", itemInfo: Container()),
                ],)
          ),
          );
  }
}

class Item extends StatelessWidget {
  final String itemType;
  final Widget itemInfo; 

   Item({
    super.key,
    required this.itemType,
    required this.itemInfo,
    });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: 10),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: teraDark,
        ),
      child: ImageProduct(itemType: itemType, imageScale: 11,)
      ),
    );
  }
}