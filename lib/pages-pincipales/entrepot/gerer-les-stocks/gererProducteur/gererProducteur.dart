import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:gerant/pages-pincipales/entrepot/gerer-les-stocks/stocks.dart';

class GererProducteur extends StatefulWidget {
  final String name;
  const GererProducteur({
    super.key,
    required this.name
    });

  @override
  State<GererProducteur> createState() => _GererProducteurState();
}

class _GererProducteurState extends State<GererProducteur> {
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
                      MaterialPageRoute(builder: (context) => Stocks())
                    )
                  },
                  child: Image.asset('assets/icons/icons8-flèche-gauche-90.png', scale: 3,)),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(),
                      Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: teraDark,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Image.asset("assets/icons/icons8-utilisateur-sexe-neutre-90 (1).png", scale: 1.5,),
                          ),
                          SizedBox(height: 10,),
                          Text(widget.name, style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 18),)
                        ],
                      ),
                      SizedBox(),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Text("Réservations", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/1.7,
                    color: teraGrey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          
                        ],
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