import 'package:contact/model/contact_card.dart';
import 'package:flutter/material.dart';

import '../views/contact_details.dart';

class ImageLabelItem extends StatelessWidget {
  ContactCard contact;
  ImageLabelItem(this.contact) {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ContactDetails(contact)));
      },
      child: Container(
        width: 60,
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: contact.contactImage,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              contact.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 11),
            )
          ],
        ),
      ),
    );
    ;
  }
}
