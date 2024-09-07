import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:gerant/pages-pincipales/entrepot/detailsStocks.dart';

class ItemsEnStockColumnItem extends StatelessWidget {
  final String productType;
  final int quantite;
  final String etat;
  final int qPlus;
  final int qMoins;

   ItemsEnStockColumnItem({
    super.key,
    required this.productType,
    required this.quantite,
    required this.etat,
    required this.qPlus,
    required this.qMoins,
    });

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        showModalBottomSheet(
          context: context,
           builder: (BuildContext context){
              return DetailsStocks(productType: productType);
           }
           );
      },
      child: Container( 
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
        width: 300,
        height: 80,
        color: teraDarkYellow,
        child: 
        Row(
          children: [
            Stack(
              alignment: AlignmentDirectional(1, 1.5),
              children: [
                ImageProduct(itemType: productType, imageScale: 10,),
                Image.asset("assets/icons/icons8-plus-90.png", scale: 5,),
              ],
            ),
            SizedBox(width: 10,),
            Container(
              width: 2,
              height: 80,
              color: teraYellow,
            ),
            SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset("assets/icons/icons8-poids-90.png", scale: 4,),
                    SizedBox(width: 5,),
                    Text("$quantite Kg", style: TextStyle(fontFamily: "Poppins",),)
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Image.asset("assets/icons/icons8-coeur-en-bonne-santé-90.png", scale: 4, color: Colors.black,),
                    SizedBox(width: 5,),
                    Text("$etat", style: TextStyle(fontFamily: "Poppins",),)
                  ],
                ),
              ],
            ),
            SizedBox(width: 30,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset("assets/icons/icons8-flèche-bas-90.png", scale: 4,),
                    Text("+$qPlus Kg", style: TextStyle(fontFamily: "Poppins", color: Color.fromARGB(255, 72, 116, 44)),)
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Image.asset("assets/icons/icons8-flèche-haut-90.png", scale: 4,),
                    Text("+$qMoins Kg", style: TextStyle(fontFamily: "Poppins", color: Color.fromARGB(255, 140, 26, 17)),)
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}