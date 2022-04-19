import 'package:flutter/material.dart';

import '../components/history_call_element.dart';
import '../model/contact_card.dart';
import '../model/my_contacts.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: myContacts.map((e) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 7),
                child: HistoryCallElement(e),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
/*

Container(
                height: double.maxFinite,
                width: double.maxFinite,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return HistoryCallElement();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 20,
                    );
                  },
                ),
              ),

*/
