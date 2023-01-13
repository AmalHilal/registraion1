import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../widgets/transfer_login_page.dart';
import '../../../components/button.dart';
import '../../../components/counter_page.dart';
import '../../../components/divider.dart';
import '../../../components/text_field.dart';
import '../../../components/titel_page.dart';
import '../../../controller/provider.dart';


class Registration1 extends StatefulWidget {
  const Registration1({Key? key}) : super(key: key);

  @override
  State<Registration1> createState() => _Registration1State();
}

class _Registration1State extends State<Registration1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x00F5F5F5),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.095,
            ),
            MyDivider(0),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            CountPage(1),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            TitelPage(
              titel: "Registration",
              subTitel:
                  "Please enter your information then we will send OTP to verify",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.035,
            ),
            MyTextField("First Name",Provider.of<Auth>(context,listen: false).firstNameControler),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            MyTextField("Last Name",Provider.of<Auth>(context,listen: false).lastNameControler),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            MyTextField("Phone Number",Provider.of<Auth>(context,listen: false).phoneControler),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            MyTextField("Email",Provider.of<Auth>(context,listen: false).emailControler),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            MyTextField("Birth Date",Provider.of<Auth>(context,listen: false).birthDateControler),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            MyTextField("Martial Status",Provider.of<Auth>(context,listen: false).martialStatusControler),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            MyTextField("City",Provider.of<Auth>(context,listen: false).cityControler),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            MyTextField("District",Provider.of<Auth>(context,listen: false).districtControler),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            MyButton("Reg2"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.014,
            ),
            MyTextButton(
              page: "Login",
              title: "Already have account?",
            )
          ],
        )),
      ),
    );
  }
}
