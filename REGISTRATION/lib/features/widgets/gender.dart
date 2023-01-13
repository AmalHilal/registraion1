import 'package:flutter/material.dart';

class Gender extends StatelessWidget {

  final bool c;
  final String title;
  final String image;


  Gender({required this.c,required this.image,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.417,
      height: MediaQuery.of(context).size.height*0.462,
      decoration: BoxDecoration(
        color: c?Color(0xffF7F9FB):Colors.white,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text("$title",style: TextStyle(color: Color(0xff001F29),fontSize: 24),),
          ),
          Image.asset("assets/images/$image",height: MediaQuery.of(context).size.height*0.379 ,)
        ],
      ),
    );
  }
}
