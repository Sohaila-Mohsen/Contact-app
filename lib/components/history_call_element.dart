import 'package:contact/model/contact_card.dart';
import 'package:flutter/material.dart';

import '../views/contact_details.dart';

class HistoryCallElement extends StatelessWidget {
  ContactCard? contact;

  HistoryCallElement(ContactCard c) {
    this.contact =c;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: CircleAvatar(
            radius: 30.0,
            backgroundImage: contact?.contactImage,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  contact!.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 40, 35, 29),
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  contact!.phone,
                  style: const TextStyle(
                      fontSize: 13, color: Color.fromARGB(203, 172, 166, 159)),
                ),
                Text(
                  contact!.lastCallDate,
                  style: TextStyle(
                      fontSize: 13, color: Color.fromARGB(255, 185, 158, 78)),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: CircleAvatar(
              radius: 16,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 15,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactDetails(
                              ContactCard.searchMyContacts(contact!.name)),
                        ));
                  },
                ),
              )),
        ),
      ],
    );
  }
}
