import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';

class TransactionsEnCoursItems extends StatefulWidget {
  const TransactionsEnCoursItems({super.key});

  @override
  State<TransactionsEnCoursItems> createState() => _TransactionsEnCoursItemsState();
}

class _TransactionsEnCoursItemsState extends State<TransactionsEnCoursItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 130,
      decoration: BoxDecoration(
        color: teraGrey,
        borderRadius: BorderRadius.circular(5)
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TransactionItem(),
            TransactionItem(),
            TransactionItem(),
            TransactionItem(),
          ],
        ),
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      width: 350,
      height: 70,
      color: teraDark,
      child: Row(
        children: [
          Image.asset("assets/patate.png", scale: 14,),
          SizedBox(width: 10,),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            width: 230,
            height: 70,
            color: teraOrange,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/icons/icons8-poids-90 (1).png", scale: 5,),
                        SizedBox(width: 5,),
                        Text("20 Kg", style: TextStyle(fontFamily: "Poppins", color: Colors.white),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Image.asset("assets/icons/icons8-sac-d'argent-90.png", scale: 5,),
                        SizedBox(width: 5,),
                        Text("160000 F", style: TextStyle(fontFamily: "Poppins", color: Colors.white),)
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/icons/icons8-poids-90 (1).png", scale: 5,),
                        SizedBox(width: 5,),
                        Text("Ibrahima Dia", style: TextStyle(fontFamily: "Poppins", color: Colors.white),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Image.asset("assets/icons/icons8-sac-d'argent-90.png", scale: 5,),
                        SizedBox(width: 5,),
                        Text("Id", style: TextStyle(fontFamily: "Poppins", color: Colors.white),)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 18,),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Image.asset("assets/icons/icons8-plus-90.png", color: Colors.white, scale: 5,),
              ],
            ),
          )
        ],
      ),
    );
  }
}