import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:gerant/ventes/transactionsEnCours.dart';
import 'package:gerant/ventes/ventesEvolutionDesPrix.dart';
import 'package:gerant/ventes/ventesTop.dart';

class Ventes extends StatelessWidget {
  const Ventes({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Column(
              children: [
                ProduitsDisponibles(),
                SizedBox(height: 20,),
                Container(
                  height: 2,
                  width: 150,
                  color: Colors.black,
                ),
              SizedBox(height: 10,),
              VentesEvolutionsDesPrix(),
              SizedBox(height: 20,),
              TransactionsEnCours(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}