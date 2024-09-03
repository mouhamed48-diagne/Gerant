import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';
import 'package:gerant/entrepot/topTitle.dart';

class Entrepot extends StatelessWidget {
  const Entrepot({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopTitle(),
              ],
            ),
          ),
        ),
    ));
  }
}