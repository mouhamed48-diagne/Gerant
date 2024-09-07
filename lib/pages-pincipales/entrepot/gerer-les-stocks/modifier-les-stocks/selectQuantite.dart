import 'package:flutter/material.dart';
import 'package:gerant/constant.dart';

class SelectQuantite extends StatefulWidget {
  const SelectQuantite({super.key});

  @override
  State<SelectQuantite> createState() => _SelectQuantiteState();
}

class _SelectQuantiteState extends State<SelectQuantite> {
  bool isPositive = true;

  final WidgetStateProperty<Icon?> thumbIcon =
      WidgetStateProperty.resolveWith<Icon?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Icon(Icons.add);
      }
      return const Icon(Icons.remove);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: teraDarkOrange,
      thumbIcon: thumbIcon,
      value: isPositive,
      onChanged: (bool value) {
        setState(() {
          isPositive = value;
        });
      },
    );
  }
}


