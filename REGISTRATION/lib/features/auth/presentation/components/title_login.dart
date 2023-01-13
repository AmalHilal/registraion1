import 'package:flutter/material.dart';

class TitelLogin extends StatelessWidget {
  final String titel;
  final String subTitel;

  TitelLogin({required this.titel, required this.subTitel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$titel",
            style: TextStyle(
                color: Color(0xff001F29),
                fontSize: 30,
                fontWeight: FontWeight.w400),
          ),
          Text(
            "$subTitel",
            style: TextStyle(
              color: Color(0xff757780),
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
