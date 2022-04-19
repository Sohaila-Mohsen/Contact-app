import 'package:contact/views/contact_details.dart';
import 'package:flutter/material.dart';

import '../model/contact_card.dart';

class ContactElement extends StatelessWidget {
  ContactCard? contact;
  ContactElement(this.contact);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ContactDetails(contact)));
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage: contact!.contactImage,
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
                        fontSize: 13,
                        color: Color.fromARGB(203, 172, 166, 159)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
