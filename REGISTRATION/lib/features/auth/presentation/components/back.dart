import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  final String page;

  MyBackButton(this.page);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushReplacementNamed("/$page");
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffF7F9FB), borderRadius: BorderRadius.circular(10)),
        width: 50,
        height: 50,
        child: InkWell(
          child: Image.asset("assets/images/r.png"),
        ),
      ),
    );
  }
}
