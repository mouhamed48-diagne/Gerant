import "package:flutter/material.dart";
import "package:gerant/constant.dart";

class LivraisonsRow extends StatefulWidget {
  const LivraisonsRow({super.key});

  @override
  State<LivraisonsRow> createState() => _LivraisonsRowState();
}

class _LivraisonsRowState extends State<LivraisonsRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            width: 350,
            height: 120,
            decoration: BoxDecoration(
              color: teraDark
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Livraison(
                    name: "Ibrahima Dia", 
                    itemType: "carotte", 
                    quantity: 200),
                  Livraison(
                    name: "Ibrahima Dia", 
                    itemType: "pomme de terre", 
                    quantity: 200),
                  Livraison(
                    name: "Ibrahima Dia", 
                    itemType: "arachide", 
                    quantity: 200),
                  Livraison(
                    name: "Ibrahima Dia", 
                    itemType: "carotte", 
                    quantity: 200),
                ],)
          ),
          );
  }
}

class Livraison extends StatelessWidget {
  final String name;
  final String itemType;
  final int quantity;
  String path;

  Livraison({
    super.key,
    required this.name,
    required this.itemType,
    required this.quantity,
    this.path = ""
    });

  @override
  Widget build(BuildContext context) {
    if(itemType == "carotte"){
      path = "assets/les-carottes.png";
    }
    if(itemType == "pomme de terre"){
      path = "assets/patate.png";
    }
    if(itemType == "arachide"){
      path = "assets/cacahuete.png";
    }

    return Container(
      margin: EdgeInsets.only(left: 10),
      padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: teraOrange,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
            ),
          Container(
            width: 90,
            height: 30,
            decoration: BoxDecoration(
              color: teraDark,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(path, scale: 20,),
                SizedBox(width: 5,),
                Text(
                  "$quantity Kg",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                    color: Colors.white
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}