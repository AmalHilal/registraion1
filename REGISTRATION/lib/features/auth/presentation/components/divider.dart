import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  final double x;

  MyDivider(this.x);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffF7F9FB), borderRadius: BorderRadius.circular(10)),
      width: MediaQuery.of(context).size.width * 0.897,
      height: 7,
      child: Row(
        children: [
          Container(
            height: 7,
            width: MediaQuery.of(context).size.width * 0.128 * x,
            decoration: BoxDecoration(
                color: Color(0xffEE9CDA),
                borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }
}
