import 'package:flutter/material.dart';

class Option extends StatefulWidget {
  final String txt;


  Option(this.txt);

  @override
  State<Option> createState() => _OptionState(txt);
}

class _OptionState extends State<Option> {
  final String txt;
  bool c=false;
  _OptionState(this.txt);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: (){
          setState(() {
            c=!c;
          });
        },
        borderRadius: BorderRadius.circular(25),
          child: Container(

            height: MediaQuery.of(context).size.height*0.0592,
            width: MediaQuery.of(context).size.width*0.384,
            decoration: BoxDecoration(
              color: c?Color(0xffE1E2EC):Color(0xffFAFDFF),
              border: Border.all(
                color: Color(0xffE1E2EC),
                width: 1
              ),
              borderRadius: BorderRadius.circular(25)
            ),
            child: Center(
              child: Text("$txt",style: TextStyle(color: Color(0xff002018),fontWeight: FontWeight.w400,fontSize: 20),),
            ),
          ),

      ),
    );
  }
}
