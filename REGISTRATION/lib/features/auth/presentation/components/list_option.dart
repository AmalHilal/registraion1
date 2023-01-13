import 'package:flutter/material.dart';

import '../../../widgets/option.dart';



class ListOption extends StatelessWidget {
  const ListOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Option("Pediatrics"),
              Option("Women's health"),
              Option("Neurology"),
            ],
          ),
          Column(
            children: [
              Option("Sports"),
              Option("Cardiovascular"),
              Option("Geriatrics"),
              Option("Orthopedics"),
            ],
          ),
        ],
      ),
    );
  }
}
