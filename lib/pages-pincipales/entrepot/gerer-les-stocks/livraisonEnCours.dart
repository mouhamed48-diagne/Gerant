import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';

final List <Livraisons> listeLivraisons = [
  Livraisons(name: "Ibrahima Dia", productType: "carotte", quantity: 50),
  Livraisons(name: "Ibrahima Dia", productType: "carotte", quantity: 50),
];

class LivraisonsEnCours extends StatefulWidget {
  const LivraisonsEnCours({super.key});

  @override
  State<LivraisonsEnCours> createState() => _LivraisonsEnCoursState();
}

class _LivraisonsEnCoursState extends State<LivraisonsEnCours> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Livraisons en cours (${listeLivraisons.length})", 
          style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
          width:  MediaQuery.of(context).size.width,
          height: 230,
          color: teraGrey,
          child: SingleChildScrollView(
            child: Column(
              children: listeLivraisons,
            ),
          ),
        )
      ],
    );
  }
}

class Livraisons extends StatelessWidget {
  final String name;
  final String productType;
  final int quantity;

  const Livraisons({
    super.key,
    required this.name,
    required this.productType,
    required this.quantity,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      width: MediaQuery.of(context).size.width,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("assets/icons/icons8-utilisateur-sexe-neutre-90.png", scale: 4,),
                  SizedBox(width: 10,),
                  Text("$name", style: TextStyle(fontFamily: "Poppins", fontSize: 14),)
                ]
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  ImageProduct(itemType: "pomme de terre", imageScale: 20,),
                  SizedBox(width: 10,),
                  Text("$quantity Kg", style: TextStyle(fontFamily: "Poppins", fontSize: 14),)
                ]
              ),
            ],
          ),
          Container(
            width: 120,
            height: 80,
            decoration: BoxDecoration(
              color: teraOrange,
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(5),
                bottomEnd: Radius.circular(5)
              )
            ),
            child: Center(
              child: InkWell(
                onTap: () => {},
                child: Container(
                  width: 90,
                  height: 60,
                  color: teraDarkOrange,
                  child: Center(
                    child: Text(
                      "Confirmer l'arrivée",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 14
                      ),
                      ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}