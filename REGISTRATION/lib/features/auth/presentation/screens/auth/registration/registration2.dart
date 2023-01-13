import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../widgets/phone.dart';
import '../../../../../widgets/transfer_login_page.dart';
import '../../../components/back.dart';
import '../../../components/button.dart';
import '../../../components/counter_page.dart';
import '../../../components/divider.dart';
import '../../../components/text_field.dart';
import '../../../components/titel_page.dart';
import '../../../controller/provider.dart';
class Registration2 extends StatefulWidget {
  const Registration2({Key? key}) : super(key: key);

  @override
  State<Registration2> createState() => _Registration2State();
}

class _Registration2State extends State<Registration2> {
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
              child: MyBackButton("Reg"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0118,
            ),
            MyDivider(1),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            CountPage(2),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            TitelPage(
              titel: "Verifcation",
              subTitel: "Please enter the code that we send to ",
            ),
            Phone(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.035,
            ),
            MyTextField("Verifcation Code",Provider.of<Auth>(context,listen: false).VerifcationControler),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            Text("Resend the OTP in 5s",style: TextStyle(fontSize: 16),),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            MyTextField("Password",Provider.of<Auth>(context,listen: false).passwordControler),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            MyTextField("Password Conformation",Provider.of<Auth>(context,listen: false).cpasswordControler),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            MyButton("Reg3"),
          ],
        )),
      ),
    );
  }
}
