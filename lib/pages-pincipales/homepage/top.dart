import "package:flutter/material.dart";
import 'package:gerant/constant.dart';
import 'package:gerant/pages-pincipales/homepage/reservationsBientotFini/reservationsBientotFini.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 190,
        decoration: BoxDecoration(
          color: teraOrange,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(47),
            bottomRight: Radius.circular(47),
          )
        ),
        child: Column(
          children: [
          SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset(
                    "assets/Tera2.png",
                    scale: 10,),
                ),
                SizedBox(width: 10,),
                Text(
                  "Entrepôt de Keur Massar",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Colors.white
                  ),
                  ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(15),
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                color: teraDarkOrange,
                borderRadius: BorderRadius.circular(22)
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TopInfo(content: "30 Kg d'espace libre", iconPath: "assets/icons/icons8-entrepôt-90 (1).png"),
                      Image.asset("assets/icons/icons8-flèche-droite-90.png", scale: 4,),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TopInfo(content: "5 réservations finissent bientôt", iconPath: "assets/icons/icons8-expiré-90.png"),
                      InkWell(
                        onTap: () => {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ReservationsBientotFini()))
                        },
                        child: Image.asset("assets/icons/icons8-flèche-droite-90.png", scale: 4,)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TopInfo extends StatefulWidget {

  final String content;
  final String iconPath;

  const TopInfo({
    super.key,
    required this.content,
    required this.iconPath,
  });

  @override
  State<TopInfo> createState() => _TopInfoState();
}

class _TopInfoState extends State<TopInfo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(widget.iconPath, scale: 4),
        SizedBox(width: 10,),
        Text(
          widget.content,
          style: TextStyle(
            fontSize: 16,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          )
      ],);
  }
}