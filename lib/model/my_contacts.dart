
import 'package:flutter/material.dart';

import 'call.dart';
import 'contact_card.dart';

List<ContactCard> myContacts = [
  ContactCard(
    name: "Sohaila Mohsen",
    phone: "+20 0115 5004 375",
    l: "Aswan, Egypt",
    lastCallDate: "10 jan",
    contactImage: AssetImage("assets/images/contact1.jpg"),
    contactHistory: [
      Call(
          statue: "Missed call",
          date: "10 jan",
          time: "10:00",
          duration: "0 sec"),
      Call(
          statue: "incoming call",
          date: "9 jan",
          time: "14:00",
          duration: "57 sec"),
      Call(
          statue: "Missed call",
          date: "31 dec 2021",
          time: "01:00",
          duration: "32 min"),
      Call(
          statue: "Missed call",
          date: "25 dec 2021",
          time: "02:00",
          duration: "59 min"),
      Call(
          statue: "outgoing call",
          date: "23 dec 2021",
          time: "10:00",
          duration: "0 sec"),
    ],
  ),
  ContactCard(
    name: "Emooz",
    phone: "+20 0112 2114 375",
    lastCallDate: "10 jan",
    contactImage: AssetImage("assets/images/contact2.jpg"),
    contactHistory: [
      Call(
          statue: "Missed call",
          date: "10 jan",
          time: "10:00",
          duration: "0 sec"),
      Call(
          statue: "incoming call",
          date: "9 jan",
          time: "14:00",
          duration: "57 sec"),
      Call(
          statue: "Missed call",
          date: "31 dec 2021",
          time: "01:00",
          duration: "32 min"),
      Call(
          statue: "Missed call",
          date: "25 dec 2021",
          time: "02:00",
          duration: "59 min"),
      Call(
          statue: "outgoing call",
          date: "23 dec 2021",
          time: "10:00",
          duration: "0 sec"),
    ],
  ),
  ContactCard(
    name: "Ranooz",
    phone: "+20 0125 5674 345",
    lastCallDate: "9 may",
    l: "Ghamra, Cairo, Egypt",
    contactImage: AssetImage("assets/images/contact3.jpg"),
    contactHistory: [
      Call(
          statue: "Missed call",
          date: "10 jan",
          time: "10:00",
          duration: "0 sec"),
      Call(
          statue: "incoming call",
          date: "9 jan",
          time: "14:00",
          duration: "57 sec"),
      Call(
          statue: "Missed call",
          date: "31 dec 2021",
          time: "01:00",
          duration: "32 min"),
      Call(
          statue: "Missed call",
          date: "25 dec 2021",
          time: "02:00",
          duration: "59 min"),
      Call(
          statue: "outgoing call",
          date: "23 dec 2021",
          time: "10:00",
          duration: "0 sec"),
    ],
  ),
  ContactCard(
    name: "Mohamed",
    phone: "+20 0102 7300 351",
    lastCallDate: "1 jun",
    contactImage: AssetImage("assets/images/contact2.jpg"),
    contactHistory: [
      Call(
          statue: "Missed call",
          date: "10 jan",
          time: "10:00",
          duration: "0 sec"),
      Call(
          statue: "incoming call",
          date: "9 jan",
          time: "14:00",
          duration: "57 sec"),
      Call(
          statue: "Missed call",
          date: "31 dec 2021",
          time: "01:00",
          duration: "32 min"),
      Call(
          statue: "Missed call",
          date: "25 dec 2021",
          time: "02:00",
          duration: "59 min"),
      Call(
          statue: "outgoing call",
          date: "23 dec 2021",
          time: "10:00",
          duration: "0 sec"),
    ],
  ),
  ContactCard(
    name: "Lol",
    phone: "+20 0155 5704 374",
    lastCallDate: "20 Aug",
    contactImage: AssetImage("assets/images/contact1.jpg"),
    contactHistory: [
      Call(
          statue: "Missed call",
          date: "10 jan",
          time: "10:00",
          duration: "0 sec"),
      Call(
          statue: "incoming call",
          date: "9 jan",
          time: "14:00",
          duration: "57 sec"),
      Call(
          statue: "Missed call",
          date: "31 dec 2021",
          time: "01:00",
          duration: "32 min"),
      Call(
          statue: "Missed call",
          date: "25 dec 2021",
          time: "02:00",
          duration: "59 min"),
      Call(
          statue: "outgoing call",
          date: "23 dec 2021",
          time: "10:00",
          duration: "0 sec"),
    ],
  ),
  ContactCard(
    name: "David",
    phone: "+03 0015 5040 000",
    lastCallDate: "10 jan",
    contactImage: AssetImage("assets/images/contact3.jpg"),
    contactHistory: [],
  ),
  ContactCard(
      name: "Sara",
      phone: "+20 0104 5114 005",
      lastCallDate: "10 jan",
      contactImage: AssetImage("assets/images/contact2.jpg"),
      contactHistory: []),
  ContactCard(
      name: "Manar",
      phone: "+20 0115 5004 375",
      lastCallDate: "10 jan",
      contactImage: AssetImage("assets/images/contact1.jpg"),
      contactHistory: [
        Call(
            statue: "Missed call",
            date: "10 jan",
            time: "10:00",
            duration: "0 sec"),
        Call(
            statue: "incoming call",
            date: "9 jan",
            time: "14:00",
            duration: "57 sec"),
        Call(
            statue: "Missed call",
            date: "31 dec 2021",
            time: "01:00",
            duration: "32 min"),
        Call(
            statue: "Missed call",
            date: "25 dec 2021",
            time: "02:00",
            duration: "59 min"),
        Call(
            statue: "Missed call",
            date: "23 dec 2021",
            time: "10:00",
            duration: "0 sec"),
      ]),
  ContactCard(
    name: "carl",
    phone: "+20 0115 5004 375",
    lastCallDate: "3 jan",
    contactImage: AssetImage("assets/images/contact1.jpg"),
    contactHistory: [],
  ),
  ContactCard(
      name: "yara",
      phone: "+20 0115 5004 375",
      lastCallDate: "10 jan",
      contactImage: AssetImage("assets/images/contact1.jpg"),
      contactHistory: [
        Call(
            statue: "Missed call",
            date: "10 jan",
            time: "10:00",
            duration: "0 sec"),
        Call(
            statue: "incoming call",
            date: "9 jan",
            time: "14:00",
            duration: "57 sec"),
        Call(
            statue: "outgoing call",
            date: "31 dec 2021",
            time: "01:00",
            duration: "32 min"),
        Call(
            statue: "Missed call",
            date: "23 dec 2021",
            time: "10:00",
            duration: "0 sec"),
      ]),
  ContactCard(
      name: "Sister",
      phone: "+20 0115 5004 375",
      lastCallDate: "10 jan",
      contactImage: AssetImage("assets/images/contact1.jpg"),
      contactHistory: [
        Call(
            statue: "Missed call",
            date: "today",
            time: "15:00",
            duration: "0 sec"),
      ]),
];
