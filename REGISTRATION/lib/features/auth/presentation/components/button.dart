import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/provider.dart';


class MyButton extends StatelessWidget {

  final String page;
  String title="Proceed";


  MyButton(this.page);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Color(0xff3879E9),
            borderRadius: BorderRadius.circular(15)
        ),

        width: MediaQuery.of(context).size.width*0.897,
        height: MediaQuery.of(context).size.height*0.059,
      child: InkWell(
        onTap: (){
            Provider.of<Auth>(context,listen: false).regester("ooo@gmail.com","999");

          Navigator.of(context).pushReplacementNamed("/$page");
        },
        child: Center(
          child: Text("Proceed",style: TextStyle(color: Color(0xffF7F9FB),fontWeight: FontWeight.w500,fontSize: 16),),
        ),
      )
    );
  }
}
