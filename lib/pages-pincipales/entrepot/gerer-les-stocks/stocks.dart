import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:gerant/navigationBar.dart';
import 'package:gerant/pages-pincipales/entrepot/entrepot.dart';
import 'package:gerant/pages-pincipales/entrepot/gerer-les-stocks/livraisonEnCours.dart';
import 'package:gerant/pages-pincipales/entrepot/gerer-les-stocks/producteurs.dart';
import 'package:gerant/pages-pincipales/entrepot/gerer-les-stocks/produits.dart';
import 'package:gerant/pages-pincipales/entrepot/gerer-les-stocks/historique/historique.dart';

class Stocks extends StatelessWidget {
  const Stocks({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => NavBar())
                      ),
                    },
                    child: Image.asset('assets/icons/icons8-flèche-gauche-90.png', scale: 3,)),
                  SizedBox(),              
                  ],
              ),
              SizedBox(height: 20,),
              Produits(),
              SizedBox(height: 30,),
              Producteurs(),
              SizedBox(height: 30,),
              LivraisonsEnCours(),
              SizedBox(height: 10,),
              Center(
                child: InkWell(
                  onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Historique())
                      ),
                  },
                  child: Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      color: teraOrange,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child: Text(
                        "Historique",
                        style: TextStyle(fontFamily: "Poppins", color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ) 
      );
  }
}