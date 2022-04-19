import 'package:contact/components/call_element.dart';
import 'package:contact/model/contact_card.dart';
import 'package:flutter/material.dart';

class ContactHistory extends StatelessWidget {
  ContactCard? contact;
  ContactHistory(this.contact) {
    print(contact!.contactHistory);
    print(contact!.name);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: contact!.contactHistory.map((e) {
        print("contact");
        return Container(
            padding: EdgeInsets.symmetric(vertical: 7),
            child: CallElement(e));
      }).toList(),
    );
  }
}
