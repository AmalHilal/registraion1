import 'package:flutter/material.dart';

import '../../../widgets/service_type.dart';

class ListServiceType extends StatefulWidget {
  const ListServiceType({Key? key}) : super(key: key);

  @override
  State<ListServiceType> createState() => _ListServiceTypeState();
}

class _ListServiceTypeState extends State<ListServiceType> {
  bool c1 = true;
  bool c2 = false;
  bool c3 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(25),
              child: ServiceType(img: "q.png", title: "Home", c: c1),
              onTap: () {
                setState(() {
                  c1 = true;
                  c2 = false;
                  c3 = false;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(25),
              child: ServiceType(img: "k.png", title: "Online", c: c2),
              onTap: () {
                setState(() {
                  c1 = false;
                  c2 = true;
                  c3 = false;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(25),
              child: ServiceType(img: "y.png", title: "Center", c: c3),
              onTap: () {
                setState(() {
                  c1 = false;
                  c2 = false;
                  c3 = true;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
