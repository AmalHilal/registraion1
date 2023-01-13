import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import '../../../../../widgets/transfer_login_page.dart';
import '../../../../../widgets/type_account.dart';
import '../../../components/back.dart';
import '../../../components/button.dart';
import '../../../components/counter_page.dart';
import '../../../components/divider.dart';
import '../../../components/text_field.dart';
import '../../../components/titel_page.dart';
import '../../../controller/provider.dart';
class Registration3 extends StatefulWidget {
  const Registration3({Key? key}) : super(key: key);

  @override
  State<Registration3> createState() => _Registration3State();
}

class _Registration3State extends State<Registration3> {
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
              child: MyBackButton("Reg2"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0118,
            ),
            MyDivider(2),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            CountPage(3),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            TitelPage(
              titel: "Type of Account",
              subTitel:
                  "Choose the type of your account, be careful to hange it is impossible",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0355,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(25),
              onTap: () {
                setState(() {
                  c1 = true;
                  c2 = false;
                });
              },
              child: TypeAccount(
                  c: c1,
                  title: "I am a patient",
                  subTitle:
                      "Find a physiotherapist online, book a session,  and more",
                  image: "z.png"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(25),
              onTap: () {
                setState(() {
                  c2 = true;
                  c1 = false;
                });
              },
              child: TypeAccount(
                  c: c2,
                  title: "I am a physiotherapist",
                  subTitle: "Find  patients, agree on sessions, and more",
                  image: "a.png"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            MyButton("Reg4"),
          ],
        )),
      ),
    );
  }
}
