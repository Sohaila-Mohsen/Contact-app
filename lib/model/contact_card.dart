import 'package:contact/model/call.dart';
import 'package:contact/model/my_contacts.dart';
import 'package:flutter/material.dart';

class ContactCard {
  var name = "";
  var phone = "";
  var email = "None";
  var lastCallDate = 'Today';
  String location = "";
  late List<Call> contactHistory;
  bool isfavourite = false;
  var contactImage = AssetImage("assets/images/unknown.png");
  ContactCard(
      {required this.name,
      required this.phone,
      required this.lastCallDate,
      required this.contactImage,
      l,
      required List<Call> contactHistory}) {
    if (l == null) {
      this.location = "";
    } else {
      this.location = l;
    }
    print("contact h : ${contactHistory}");
    this.contactHistory = contactHistory;
  }
  static ContactCard? searchMyContacts(String search) {
    for (ContactCard contact in myContacts) {
      if (search.toLowerCase().contains(contact.name.toLowerCase()) ||
          search.toLowerCase().contains(contact.phone.toLowerCase())) {
        print("found ${contact.name}  ${contact.contactHistory} ");

        return contact;
      }
    }
    print("not found");
    return null;
  }
}
