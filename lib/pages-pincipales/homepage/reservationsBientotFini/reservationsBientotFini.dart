import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:gerant/navigationBar.dart';
import 'package:gerant/pages-pincipales/homepage/reservationsBientotFini/reservationsFiniItems.dart';

List <ReservationsFiniItems> listeReservations = [
  ReservationsFiniItems(name: "Ibrahime Dia", time: "2 jours", productType: "carotte", quantity: 50),
  ReservationsFiniItems(name: "Ibrahime Dia", time: "2 jours", productType: "carotte", quantity: 50),
  ReservationsFiniItems(name: "Ibrahime Dia", time: "2 jours", productType: "carotte", quantity: 50),
  ReservationsFiniItems(name: "Ibrahime Dia", time: "2 jours", productType: "carotte", quantity: 50),
  ReservationsFiniItems(name: "Ibrahime Dia", time: "2 jours", productType: "carotte", quantity: 50),
  ReservationsFiniItems(name: "Ibrahime Dia", time: "2 jours", productType: "carotte", quantity: 50),
  ReservationsFiniItems(name: "Ibrahime Dia", time: "2 jours", productType: "carotte", quantity: 50),
  ReservationsFiniItems(name: "Ibrahime Dia", time: "2 jours", productType: "carotte", quantity: 50),
];

class ReservationsBientotFini extends StatefulWidget {
  const ReservationsBientotFini({super.key});

  @override
  State<ReservationsBientotFini> createState() => _ReservationsBientotFiniState();
}

class _ReservationsBientotFiniState extends State<ReservationsBientotFini> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                InkWell(
                  onTap: () => {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => NavBar())
                    )
                  },
                  child: Image.asset('assets/icons/icons8-flèche-gauche-90.png', scale: 3,)),
                  SizedBox(height: 10,),
                  Text("Réservations qui finnissent bientôt", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 40,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/1.3,
                    color: teraGrey,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: SingleChildScrollView(
                        child: Column(
                          children: listeReservations,
                        ),
                      ),
                    ),
                  )
            ],
          )
        ),
      ) 
    );
  }
}