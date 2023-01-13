import 'package:flutter/material.dart';

class Tools extends StatelessWidget {
  const Tools({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.897,
      height:MediaQuery.of(context).size.height*0.152,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Color(0xffF7F9FB),
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 18,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                tools("Certifcate", context),
                myIcon(Color(0xff7BE5C5), 0.1, "1.png", context),
                myIcon(Color(0xffFF5449), 0.1, "2.png", context),
              ],
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                tools("Attachment Name", context),
                myIcon(Color(0xffEE9CDA), 0.215, "3.png", context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget tools(String txt,BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height*0.05,
      width: MediaQuery.of(context).size.width*0.59,
      decoration: BoxDecoration(
        color: Color(0xffE1E2EC),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 14),
        child: TextField(
          decoration: InputDecoration(
            hintText: "$txt",
            border: InputBorder.none,
            hintStyle: TextStyle(color: Color(0xff001F29))
          ),
        ),
      ),
    );
  }

  Widget myIcon(Color clr,double width,String img,BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height*0.05,
      width: MediaQuery.of(context).size.width*width,
      child: Image.asset("assets/images/$img",height: 10,),
      decoration: BoxDecoration(
        color: clr,
        borderRadius: BorderRadius.circular(15)
      ),
    );
  }
}
