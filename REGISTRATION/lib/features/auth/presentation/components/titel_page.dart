import 'package:flutter/material.dart';

class TitelPage extends StatelessWidget {
  final String titel;
  final String subTitel;

  TitelPage({required this.titel, required this.subTitel});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$titel",
              style: TextStyle(
                  color: Color(0xff001F29),
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                  fontWeight: FontWeight.w700),
            ),
            Text("$subTitel",
                style: TextStyle(
                  color: Color(0xff757780),
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
