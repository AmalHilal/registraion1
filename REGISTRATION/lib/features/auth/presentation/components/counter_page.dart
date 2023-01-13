import 'package:flutter/material.dart';

class CountPage extends StatelessWidget {
  int count;

  CountPage(this.count);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$count",
            style: TextStyle(
                color: Color(0xff001F29),
                fontSize: 24,
                fontWeight: FontWeight.w400),
          ),
          Text(
            "/8",
            style: TextStyle(
                color: Color(0xff757780),
                fontSize: 14,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
