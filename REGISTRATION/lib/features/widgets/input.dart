import 'package:flutter/material.dart';
class Input extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.897,
      height: MediaQuery.of(context).size.height*0.237,
      decoration: BoxDecoration(
          color: Color(0xffE1E2EC),
          borderRadius: BorderRadius.circular(28)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16,left: 23),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Bio",
            hintStyle: TextStyle(color: Color(0xff001F29),fontSize: 20),
            border: InputBorder.none,
          ),
          maxLines: 100,
        )
      )
    );
  }
}