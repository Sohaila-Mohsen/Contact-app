import 'package:flutter/material.dart';

import '../model/call.dart';

class CallElement extends StatelessWidget {
  Call? e;
  CallElement(this.e);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (e!.statue == "Missed call")
          Icon(
            Icons.call_missed_outgoing,
            color: Colors.red,
          )
        else if (e!.statue == "incoming call")
          Icon(
            Icons.call_received,
            color: Colors.green,
          )
        else if (e!.statue == "outgoing call")
          Icon(
            Icons.call_made_rounded,
            color: Colors.green,
          ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  e!.date,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                ),
                Text(
                  (e!.statue + "    " + e!.duration),
                  style: TextStyle(
                      fontSize: 13, color: Color.fromARGB(255, 112, 112, 112)),
                ),
              ],
            ),
          ),
        ),
        Text(
          e!.time,
          style: TextStyle(
              fontSize: 13, color: Color.fromARGB(255, 112, 112, 112)),
        )
      ],
    );
  }
}
