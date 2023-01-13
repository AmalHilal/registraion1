import 'package:flutter/material.dart';

class MinMax extends StatelessWidget {
final double value;

MinMax(this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width*0.256,
        height: MediaQuery.of(context).size.height*0.0592,
      decoration: BoxDecoration(
        color: Color(0xffE1E2EC),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Center(child: Padding(
        padding: const EdgeInsets.only(right:65 ),
        child: Text("${value*100}",style: TextStyle(color: Color(0xff001F29),fontSize: 20),),
      )),
    );
  }
}
