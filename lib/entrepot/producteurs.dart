import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:gerant/entrepot/producteursRow.dart';

class Producteurs extends StatelessWidget {
  const Producteurs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("assets/icons/icons8-fermier-homme-90.png", scale: 3,),
                SizedBox(width: 10,),
                Text("Producteurs", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 16),),
              ],
            ),
            Image.asset("assets/icons/icons8-chercher-90.png", scale: 3,),
          ],
        ),
        SizedBox(height: 10,),
        ProducteursRow(),
        SizedBox(height: 20,),
        InkWell(
        onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Scaffold())
            )
          }, 
        child: Container(
          width: 150,
          height: 40,
          decoration: BoxDecoration(
            color: teraOrange,
            borderRadius: BorderRadius.circular(6)
          ),
          child: Center(
            child: Text(
            "Gérer les stocks",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: "Poppins"
            ),
            ),),
              )),
      ],
    );
  }
}