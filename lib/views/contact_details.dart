import 'package:contact/components/button-label_iteam.dart';
import 'package:contact/model/contact_card.dart';
import 'package:flutter/material.dart';

import '../components/details_element.dart';

class ContactDetails extends StatelessWidget {
  ContactCard? contact;

  ContactDetails(this.contact) {
    print(contact!.contactHistory);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/background1.jpg")),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            color: Colors.black.withOpacity(0.4),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    const Text(
                      'Contact details',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 19),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                  ],
                ),
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: contact?.contactImage,
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.only(bottom: 5, end: 8),
                      child: CircleAvatar(
                        radius: 13,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.camera_alt_rounded,
                          size: 15,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  contact!.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 19),
                ),
                Text(
                  contact!.location,
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonLabelItem(Icon(Icons.video_camera_front_rounded),
                        "Video Call", 11.0, Colors.white),
                    ButtonLabelItem(Icon(Icons.chat_rounded), "Message", 11.0,
                        Colors.white),
                    ButtonLabelItem(
                        Icon(Icons.call), "Call", 11.0, Colors.white),
                  ],
                ),
                Expanded(child: DetailElement(contact)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
