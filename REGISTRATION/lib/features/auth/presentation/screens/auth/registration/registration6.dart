import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../../../../../widgets/transfer_login_page.dart';
import '../../../../../widgets/type_account.dart';
import '../../../components/back.dart';
import '../../../components/button.dart';
import '../../../components/counter_page.dart';
import '../../../components/divider.dart';
import '../../../components/list_service_type.dart';
import '../../../components/text_field.dart';
import '../../../components/titel_page.dart';
import '../../../controller/provider.dart';

class Registration6 extends StatefulWidget {
  const Registration6({Key? key}) : super(key: key);

  @override
  State<Registration6> createState() => _Registration6State();
}

class _Registration6State extends State<Registration6> {
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
              child: MyBackButton("Reg5"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0118,
            ),
            MyDivider(5),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            CountPage(6),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            TitelPage(
              titel: "Select Service Type",
              subTitel:
                  "Please select prefered session location you can select one or more",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            ListServiceType(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0154,
            ),
            MyButton("Reg7"),
          ],
        )),
      ),
    );
  }
}
