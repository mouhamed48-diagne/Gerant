import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:gerant/pages-pincipales/ventes/transactionsEnCoursItems.dart';

class TransactionsEnCours extends StatelessWidget {
  const TransactionsEnCours({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Text("Transactions en cours", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 16),),
                Row(
                  children: [
                  Text("voir tout", style: TextStyle(fontFamily: "Poppins", color: teraOrange),),
                  SizedBox(width: 5,),
                  Image.asset("assets/icons/icons8-vers-l'avant-90.png", scale: 5,),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            TransactionsEnCoursItems(),
            SizedBox(height: 10,),
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
                  "Historique",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: "Poppins"
                  ),
                  ),),
                    )),
        ],
      ),
    );
  }
}