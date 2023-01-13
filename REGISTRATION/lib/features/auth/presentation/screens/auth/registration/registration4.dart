import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../../../../../widgets/gender.dart';
import '../../../../../widgets/transfer_login_page.dart';
import '../../../../../widgets/type_account.dart';
import '../../../components/back.dart';
import '../../../components/button.dart';
import '../../../components/counter_page.dart';
import '../../../components/divider.dart';
import '../../../components/text_field.dart';
import '../../../components/titel_page.dart';
import '../../../controller/provider.dart';

class Registration4 extends StatefulWidget {
  const Registration4({Key? key}) : super(key: key);

  @override
  State<Registration4> createState() => _Registration4State();
}

class _Registration4State extends State<Registration4> {
  bool c1 = false;
  bool c2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x00F5F5F5),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0236,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 400),
              child: MyBackButton("Reg3"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0118,
            ),
            MyDivider(3),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            CountPage(4),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            TitelPage(
              titel: "What is your gender?",
              subTitel:
                  "To give you a better experience we need to know your Gender",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    borderRadius: BorderRadius.circular(25),
                    onTap: () {
                      setState(() {
                        c1 = true;
                        c2 = false;
                      });
                    },
                    child: Gender(c: c1, image: "M.png", title: "Male")),
                InkWell(
                    borderRadius: BorderRadius.circular(25),
                    onTap: () {
                      setState(() {
                        c2 = true;
                        c1 = false;
                      });
                    },
                    child: Gender(c: c2, image: "F.png", title: "Female")),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            MyButton("Reg5"),
          ],
        )),
      ),
    );
  }
}
