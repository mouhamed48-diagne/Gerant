import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:gerant/pages-pincipales/entrepot/gerer-les-stocks/stocks.dart';

List <LivraisonsHistorique> listeHistorique = [
  LivraisonsHistorique(name: "Ibrahima Dia", productType: "carotte", quantity: 50),
  LivraisonsHistorique(name: "Ibrahima Dia", productType: "carotte", quantity: 50),
];

class Historique extends StatefulWidget {
  const Historique({super.key});

  @override
  State<Historique> createState() => _HistoriqueState();
}

class _HistoriqueState extends State<Historique> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  InkWell(
                    onTap: () => {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => Stocks())
                      )
                    },
                    child: Image.asset('assets/icons/icons8-flèche-gauche-90.png', scale: 3,)),
                    SizedBox(height: 10,),
                    Text("Historique des livraisons", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 20),),
                    SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height + 100*listeHistorique.length,
                      color: teraGrey,
                      child: Column(
                        children: listeHistorique,
                      ),
                    ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

class LivraisonsHistorique extends StatelessWidget {
  final String name;
  final String productType;
  final int quantity;

  const LivraisonsHistorique({
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
                      "Retirer Confirmation",
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