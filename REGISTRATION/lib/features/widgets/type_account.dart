import 'package:flutter/material.dart';

class TypeAccount extends StatelessWidget {
  final bool c;
  final String title;
  final String subTitle;
  final String image;


  TypeAccount({required this.c,required  this.title,required  this.subTitle,required  this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: c?Color(0xffF7F9FB):Colors.white,
        borderRadius: BorderRadius.circular(25)
      ),
        width: MediaQuery.of(context).size.width*0.897,
        height:  MediaQuery.of(context).size.height*0.228,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 13,left: 19),
            child: Text("$title",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xff001F29)),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 19,top: 62),
                child: Container(
                  width: 200,
                    child: Text("$subTitle",style: TextStyle(fontSize: 15,color: Color(0xff757780)),)
                ),
              ),
              Image.asset("assets/images/${image}",fit: BoxFit.cover,width: MediaQuery.of(context).size.width*0.385)
            ],
          )
        ],
      ),
    );
  }
}
