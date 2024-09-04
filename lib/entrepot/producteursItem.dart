import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';

class ProducteursItem extends StatefulWidget {
  final String name;
  final List <ProductItem> listeItems;
  const ProducteursItem({
    super.key,
    required this.name,
    required this.listeItems,
    });

  @override
  State<ProducteursItem> createState() => _ProducteursItemState();
}

class _ProducteursItemState extends State<ProducteursItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
      padding: EdgeInsets.all(10),
      width: 130,
      height: 240,
      decoration: BoxDecoration(
        color: teraDark,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 90,
              height: 50,
              decoration: BoxDecoration(
                color: teraOrange,
                borderRadius: BorderRadius.circular(4)
              ),
              child: Text(
                textAlign: TextAlign.center,
                widget.name,
                 style: 
              TextStyle(
                fontFamily: "Poppins", 
                fontWeight: FontWeight.bold,
                 color: Colors.white,
                  fontSize: 16,
                  ),),
            ),
          ),
          SizedBox(height: 10,),
          Text(
              "Produits (${widget.listeItems.length})",
              style: 
              TextStyle(
                fontFamily: "Poppins", 
                color: Colors.white,
                fontSize: 14,
                ),),
          SizedBox(height: 5,),
          Column(
            children: [
              widget.listeItems[0],
              widget.listeItems[1],
              widget.listeItems[2],
              widget.listeItems[3],
            ]
          ),
          SizedBox(height: 5,),
          Text(
          "Plus...",
          style: 
          TextStyle(
            fontFamily: "Poppins", 
            color: Colors.white,
            fontSize: 14,
            ),),
        ],
      ),
    );
  }
}


class ProductItem extends StatelessWidget {

  final String productType;
  final int quantity;
    String imagePath;
   ProductItem({
    super.key,
    required this.productType,
    required this.quantity,
    this. imagePath = ""
    });

  @override
  Widget build(BuildContext context) {
    if(productType == "carotte"){
      imagePath = "assets/les-carottes.png";
    }
    if(productType == "pomme de terre"){
      imagePath = "assets/patate.png";
    }
    if(productType == "arachide"){
      imagePath = "assets/cacahuete.png";
    }
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: Row(
        children: [
          Image.asset(imagePath, scale: 24,),
          SizedBox(width: 10,),
          Text("$quantity Kg", style: TextStyle(fontFamily: "Poppins", color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),),
        ],
      ),
    );
  }
}
