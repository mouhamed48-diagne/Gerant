import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';

class ReservationsFiniItems extends StatelessWidget {
  final String name;
  final String time;
  final String productType;
  final int quantity;

  const ReservationsFiniItems({
    super.key,
    required this.name,
    required this.time,
    required this.productType,
    required this.quantity,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100)
              ),
              child: Center(
                child: Image.asset("assets/icons/mini-user.png", scale: 3,)
              ),
            ),
            SizedBox(width: 10,),
            Text(name, style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 16),)
            ],
        ),
        SizedBox(height: 10,),
        Container(
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
        ),
      ],
    );
  }
}