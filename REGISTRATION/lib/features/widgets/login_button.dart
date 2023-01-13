import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {

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

          },
          child: Center(
            child: Text("Login",style: TextStyle(color: Color(0xffF7F9FB),fontWeight: FontWeight.w500,fontSize: 16),),
          ),
        )
    );
  }
}