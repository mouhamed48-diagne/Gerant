import 'package:flutter/material.dart';

class TopTitle extends StatefulWidget {
  const TopTitle({super.key});

  @override
  State<TopTitle> createState() => _TopTitleState();
}

class _TopTitleState extends State<TopTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
                Text(
                  "Entrepôt de Keur Massar",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  ),
                SizedBox(height: 5,),                
                Text(
                  "30 Kg d'espace libre",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  ),
      ],
    );
  }
}