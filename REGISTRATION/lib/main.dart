import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'features/auth/presentation/controller/provider.dart';
import 'features/auth/presentation/screens/auth/login.dart';
import 'features/auth/presentation/screens/auth/registration/registration1.dart';
import 'features/auth/presentation/screens/auth/registration/registration2.dart';
import 'features/auth/presentation/screens/auth/registration/registration3.dart';
import 'features/auth/presentation/screens/auth/registration/registration4.dart';
import 'features/auth/presentation/screens/auth/registration/registration5.dart';
import 'features/auth/presentation/screens/auth/registration/registration6.dart';
import 'features/auth/presentation/screens/auth/registration/registration7.dart';
import 'features/auth/presentation/screens/auth/registration/registration8.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context)=> Auth(),
    child: MaterialApp(
      theme: ThemeData(fontFamily: 'Recoleta'),
        routes: {"/Login":(context)=>Login(),
          "/Reg":(context)=>Registration1(),
          "/Reg2":(context)=>Registration2(),
          "/Reg3":(context)=>Registration3(),
          "/Reg4":(context)=>Registration4(),
          "/Reg5":(context)=>Registration5(),
          "/Reg6":(context)=>Registration6(),
          "/Reg7":(context)=>Registration7(),
          "/Reg8":(context)=>Registration8(),


        },
      home: Registration1()
    )
    );
  }
}


