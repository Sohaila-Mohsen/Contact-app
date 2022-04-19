import 'package:contact/components/contact_element.dart';
import 'package:contact/components/image_label_item.dart';
import 'package:contact/model/number_sp.dart';
import 'package:flutter/material.dart';
import '../components/button-label_iteam.dart';
import '../model/contact_card.dart';
import '../model/my_contacts.dart';
import '../model/my_search_delegate.dart';

class MyContactPage extends StatefulWidget {
  @override
  State<MyContactPage> createState() => _MyContactPageState();
}

class _MyContactPageState extends State<MyContactPage> {
  String inSearchbar = "Search";
  @override
  void initState() {
    super.initState();
    inSearchbar = NumberSP.getNumber().toString();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            GestureDetector(
              onTap: () {
                showSearch(
                  context: context,
                  delegate: MySearchDelegate(),
                );
              },
              child: Container(
                padding: EdgeInsets.only(top: 20, bottom: 6),
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 255, 115, 0)))),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 120,
                child: Row(
                  children: [
                    ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        print("email : ${myContacts[index].email}");
                        return ImageLabelItem(myContacts[index]);
                      },
                      separatorBuilder: (context, index) {
                        return Container(
                          width: 10,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: myContacts.map((e) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 7),
                  child: ContactElement(e),
                );
              }).toList(),
            ),
          ]),
        ),
      ),
    );
  }
}
