import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';

class ProducteursRow extends StatefulWidget {
  const ProducteursRow({super.key});

  @override
  State<ProducteursRow> createState() => _ProducteursRowState();
}

class _ProducteursRowState extends State<ProducteursRow> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProducteursItem(name: "Ibrahima Dia", nombreLivraison: 12),
          ProducteursItem(name: "Ibrahima Dia", nombreLivraison: 12),
          ProducteursItem(name: "Ibrahima Dia", nombreLivraison: 12),
          ProducteursItem(name: "Ibrahima Dia", nombreLivraison: 12),
          ProducteursItem(name: "Ibrahima Dia", nombreLivraison: 12),
        ],
      ),
    );
  }
}

class ProducteursItem extends StatelessWidget {
  final String name;
  final int nombreLivraison;

  const ProducteursItem({
    super.key,
    required this.name,
    required this.nombreLivraison
    });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
        width: 130,
        height: 170,
        decoration: BoxDecoration(
          color: teraDark,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: teraOrange,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Text("${name}", textAlign: TextAlign.center,style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),),
            ),
            SizedBox(height: 10,),
            Image.asset("assets/icons/icons8-livraison-90.png", scale: 2,),
            SizedBox(height: 10,),
            Text("${nombreLivraison} en cours", textAlign: TextAlign.center,style: TextStyle(fontFamily: "Poppins", fontSize: 14, color: Colors.white),),
          ],
        ),
      ),
    );
  }
}