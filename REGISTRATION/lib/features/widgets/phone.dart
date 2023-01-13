import 'package:flutter/material.dart';

class Phone extends StatelessWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("+90 531 999 00 11",style: TextStyle(color: Color(0xffEE9CDA),fontWeight: FontWeight.w700),),
    );
  }
}
