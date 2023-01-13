import 'package:flutter/material.dart';

import 'information.dart';


class MyRangeSlider extends StatefulWidget {
  const MyRangeSlider({Key? key}) : super(key: key);

  @override
  State<MyRangeSlider> createState() => _MyRangeSliderState();
}

class _MyRangeSliderState extends State<MyRangeSlider> {
  RangeValues values=RangeValues(0.1,0.5);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.95,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RangeSlider(
            values: values,
            divisions: 100,
            onChanged:(newValue){
              setState(() {
                values=newValue;

              });

            },
            inactiveColor: Color(0xffF7F9FB),
            activeColor: Color(0xffEE9CDA),

          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MinMax(values.start),
                Text("Session Fee",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
                MinMax(values.end),
              ],
            ),
          )
        ],
      )
    );
  }
}
