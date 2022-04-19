import 'package:contact/components/contact_element.dart';
import 'package:contact/model/contact_card.dart';
import 'package:contact/model/my_contacts.dart';
import 'package:contact/views/contact_details.dart';
import 'package:flutter/material.dart';

class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          Icons.clear,
          color: Color.fromARGB(255, 255, 115, 0),
        ),
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Color.fromARGB(255, 255, 115, 0),
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ContactCard.searchMyContacts(query) != null
        ? Column(children: [
            SizedBox(
              height: 30,
            ),
            (ContactElement(ContactCard.searchMyContacts(query)))
          ])
        : Container(
            width: double.infinity,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 250,
                  ),
                  Text("NotFound",
                      style: TextStyle(fontSize: 20, color: Colors.grey))
                ]));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: myContacts[index].contactImage,
          ),
          title: Text(myContacts[index].name),
          onTap: () {
            query = myContacts[index].name;

            showResults(context);
          },
        );
      },
    );
  }
}
