import "package:flutter/material.dart";
import "package:gerant/constant.dart";
import "dart:math";

class EvolutionDesPrix extends StatelessWidget {
  const EvolutionDesPrix({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const Text(
            "Evolution des prix de vente",
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
           ),
           SizedBox(height: 10,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/augmenter.png', scale: 20),
              SizedBox(width: 10,),
              Text("+50f/Kg",
              style: TextStyle(
                fontFamily: "Poppins",
                color: Color.fromARGB(255, 72, 116, 44),
              )),
              SizedBox(width: 5,),
              Text("Riz",
              style: TextStyle(
                fontFamily: "Poppins",
              )),
              SizedBox(width: 30,),
              Container(
                width: 2,
                height: 50,
                color: teraGrey,
              ),
              SizedBox(width: 10,),
              Image.asset('assets/decrease.png', scale: 20),
              SizedBox(width: 10,),
              Text("-25f/Kg",
              style: TextStyle(
                fontFamily: "Poppins",
                color: Color.fromARGB(255, 187, 39, 26),
              )),
              SizedBox(width: 5,),
              Text("Carotte",
              style: TextStyle(
                fontFamily: "Poppins",
              )),
            ],
           )
        ],
      ),
    );
  }
}