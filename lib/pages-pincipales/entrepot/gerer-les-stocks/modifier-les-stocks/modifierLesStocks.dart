import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:gerant/pages-pincipales/entrepot/gerer-les-stocks/stocks.dart';
import 'package:gerant/pages-pincipales/entrepot/gerer-les-stocks/modifier-les-stocks/selectQuantite.dart';


TextEditingController produitController = TextEditingController();
TextEditingController producteurController = TextEditingController();
TextEditingController quantiteController = TextEditingController();
TextEditingController raisonController = TextEditingController();
TextEditingController detailsController = TextEditingController();

class ModifierLesStocks extends StatelessWidget {
  const ModifierLesStocks({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: SingleChildScrollView(
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
                  Text("Modification des Stocks", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 22),),
                  SizedBox(height: 20,),
                  Text("Sélectionnez un produit", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                      color: teraGrey,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownMenu(
                      menuStyle: MenuStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.white),
                        fixedSize: WidgetStatePropertyAll(Size(50, 250)),
                      ),
                      width: MediaQuery.of(context).size.width,
                      dropdownMenuEntries: listeProduitDropdown,
                      controller: produitController,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Sélectionnez une quantité", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SelectQuantite(),
                      SizedBox(width: 10,),
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.grey
                          ),
                          color: teraGrey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          controller: quantiteController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ) 
                          ),
                        ),
                      ),
                  SizedBox(width: 10,),
                  Text("Kg", style: TextStyle(fontFamily: "Poppins", fontSize: 16),),
                  ],
                ),
                SizedBox(height: 20,),
                Text("Numéro du producteur", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 16),),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: teraGrey,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey)
                  ),
                  child: TextField(
                    controller: producteurController,
                    keyboardType: TextInputType.numberWithOptions(),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ) 
                    ),
                  )
                ),
                SizedBox(height: 20,),
                Text("Pourquoi modifiez vous le stock?", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 16),),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: teraGrey,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: DropdownMenu(
                    dropdownMenuEntries: listeRaison,
                    controller: raisonController,
                    width: MediaQuery.of(context).size.width,
                    menuStyle: MenuStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white)
                    ),
                    menuHeight: 250,
                    ),
                ),
                SizedBox(height: 20,),
                Text("Pourquoi modifiez vous le stock?", style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 16),),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey
                    ),
                    color: teraGrey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    controller: detailsController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () => {
                     Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => Stocks())
                    ),
                  },
                  child: Center(
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: teraOrange,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: Text(
                          "Valider",
                          style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
                          ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
    ));
  }
}