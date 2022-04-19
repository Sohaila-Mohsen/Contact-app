import 'package:flutter/material.dart';

class DetailsInDetails extends StatelessWidget {
  Icon? icon;
  String? main;
  String? sub;

  DetailsInDetails(this.icon, this.main, this.sub);

  @override
  Widget build(BuildContext context) {
    return (!main!.contains("None"))
        ? (Row(
            children: [
              Container(
                  padding: EdgeInsets.only(right: 30, left: 20), child: icon!),
              Column(
                children: [
                  Text(
                    main!,
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  Text(sub!,
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 120, 119, 119))),
                ],
              ),
            ],
          ))
        : Container();
  }
}
