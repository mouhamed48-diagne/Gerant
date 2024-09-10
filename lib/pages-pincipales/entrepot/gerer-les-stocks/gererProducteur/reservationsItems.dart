import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';

class ReservationsItems extends StatelessWidget {
  final String time;
  final String productType;
  final int quantity;

  const ReservationsItems({
    super.key,
    required this.time,
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
                  Image.asset("assets/icons/icons8-horloge-90.png", scale: 4,),
                  SizedBox(width: 10,),
                  Text("$time", style: TextStyle(fontFamily: "Poppins", fontSize: 14),)
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
                      "Terminer",
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