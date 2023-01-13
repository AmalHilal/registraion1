import 'package:flutter/material.dart';

import '../../../widgets/profile.dart';

class ListProfile extends StatefulWidget {
  const ListProfile({Key? key}) : super(key: key);

  @override
  State<ListProfile> createState() => _ListProfileState();
}

class _ListProfileState extends State<ListProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Center(
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Profile(image: "w.png", radius: 300),
                  Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: CircleAvatar(
                      backgroundColor: Color(0xffEE9CDA),
                      child: Icon(Icons.add),
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Profile(image: "w.png", radius: 25),
              Profile(image: "h.png", radius: 25),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Profile(image: "s.png", radius: 25),
              Profile(image: "e.png", radius: 25),
            ],
          )
        ],
      ),
    );
  }
}
