import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final String image;
  final double radius;


  Profile({required this.image,required this.radius});

  @override
  State<Profile> createState() => _ProfileState(image,radius);
}

class _ProfileState extends State<Profile> {
  final String image;
  final double radius;
  bool c=false;
  _ProfileState(this.image,this.radius);

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
        borderRadius: BorderRadius.circular(radius),
        child: Container(

          height: MediaQuery.of(context).size.height*0.195,
          width: MediaQuery.of(context).size.width*0.39,
          decoration: BoxDecoration(
              color: c?Color(0xffE1E2EC):Color(0xffFfFfFF),
              border: Border.all(
                  color: Color(0xffE1E2EC),
                  width: 1
              ),
              borderRadius: BorderRadius.circular(radius)
          ),
          child: Center(
            child: Image.asset("assets/images/$image",height:MediaQuery.of(context).size.height*0.142 ,)
          ),
        ),

      ),
    );
  }
}