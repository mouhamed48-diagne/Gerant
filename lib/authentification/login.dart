import 'package:flutter/material.dart';
import 'package:gerant/authentification/teraTextfield.dart';
import 'package:gerant/navigationBar.dart';
import 'package:gerant/pages-pincipales/homepage/homepage.dart';
import 'package:gerant/constant.dart';
class Login extends StatelessWidget {
  Login({super.key});
  final identifiantController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
    SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text(
                'Connexion',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:40,
                  fontFamily: "Jost"
                ),
              ),
              SizedBox(height: 40,),
              Image.asset(
                'assets/Tera.png',
                width: 175,
              ),
              SizedBox(height: 80,),
              TeraTextField(
                controller: identifiantController, 
                name: "Identifiant", 
                prefixIcon: "assets/icons/icons8-utilisateur-sexe-neutre-90.png", 
                inputType: TextInputType.number,
                textCapitalization: TextCapitalization.words,
                
                ),
              SizedBox(height: 10,),
              TeraTextField(
                controller: identifiantController, 
                name: "Mot de Passe", 
                prefixIcon: "assets/icons/icons8-mot-de-passe-1-90.png", 
                inputType: TextInputType.number,
                textCapitalization: TextCapitalization.words,
                ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Text(
                      "Mot de passe oublié?",
                      style: TextStyle(
                        fontFamily: "Jost",
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              InkWell(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavBar())
                  )
                }, 
              child: Container(
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                  color: teraOrange,
                  borderRadius: BorderRadius.circular(6)
                ),
                child: Center(
                  child: Text(
                  "Se connecter",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                  ),),
              )),
              SizedBox(height: 65,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      "Identifiant oublié?",
                      style: TextStyle(
                        fontFamily: "Jost",
                        fontWeight: FontWeight.bold
                      ),
                      ),
                  SizedBox(width: 5,),
                  Text(
                    "Cliquez ici!",
                    style: TextStyle(
                      fontFamily: "Jost",
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      color: teraOrange,
                    ),
                    ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                color: teraOrange,
                height: 22,
              )
            ],
          ),
        ),
      ),
    );
  }
}
