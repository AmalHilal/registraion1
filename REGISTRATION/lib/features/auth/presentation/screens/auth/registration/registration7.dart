import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../../../../../widgets/transfer_login_page.dart';
import '../../../../../widgets/type_account.dart';
import '../../../components/back.dart';
import '../../../components/button.dart';
import '../../../components/counter_page.dart';
import '../../../components/divider.dart';
import '../../../components/list_option.dart';
import '../../../components/text_field.dart';
import '../../../components/titel_page.dart';
import '../../../controller/provider.dart';

class Registration7 extends StatefulWidget {
  const Registration7({Key? key}) : super(key: key);

  @override
  State<Registration7> createState() => _Registration7State();
}

class _Registration7State extends State<Registration7> {
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
              child: MyBackButton("Reg6"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0118,
            ),
            MyDivider(6),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            CountPage(7),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            TitelPage(
              titel: "What is your Specialities?",
              subTitel:
                  "Please select your specialities and skills, you can select one or more",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            ListOption(),
            Image.asset("assets/images/d.png",width: MediaQuery.of(context).size.width*0.7,),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            MyButton("Reg8"),
          ],
        )),
      ),
    );
  }
}
