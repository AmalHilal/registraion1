
import 'package:flutter/material.dart';

class ServiceType extends StatelessWidget {
  final String img;
  final String title;
  final bool c;

  ServiceType({required this.img,required this.title,required this.c});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: MediaQuery.of(context).size.height*0.195,
      width: MediaQuery.of(context).size.width*0.39,
      decoration: BoxDecoration(
          color: c?Color(0xffE1E2EC):Color(0xffFfFfFF),
          border: Border.all(
              color: Color(0xffE1E2EC),
              width: 1
          ),
          borderRadius: BorderRadius.circular(25)
      ),
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/images/$img",height:MediaQuery.of(context).size.height*0.0947 ,),
              Text("$title",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
            ],
          )
      ),
    );
  }
}