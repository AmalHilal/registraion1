import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class MyTextButton extends StatelessWidget {
  final String page;
  final String title;


  MyTextButton({required this.page,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$title",style: TextStyle(color: Color(0xff757780)),),
          TextButton(onPressed: (){
            Navigator.of(context).pushReplacementNamed("/$page");
          }, child: Text("$page",style: TextStyle(color: Color(0xffEE9CDA)),))
        ],
      ),
    );
  }
}
