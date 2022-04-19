import 'package:contact/blocs/iconc/cubit/icon_cubit.dart';
import 'package:contact/components/contact_History.dart';
import 'package:contact/components/details_in%20_details.dart';
import 'package:contact/model/contact_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/iconc/cubit/icon_cubit.dart';
import '../blocs/number/cubit/number_cubit.dart';
import 'button-label_iteam.dart';

// ignore: must_be_immutable
class DetailElement extends StatelessWidget {
  ContactCard? contact;
  var iconcubit;
  DetailElement(this.contact, {Key? key}) : super(key: key) {
    iconcubit = IconCubit(contact!.isfavourite);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.only(top: 20),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            buildDetailsContiner(),
            GestureDetector(
                onTap: () {
                  contact!.isfavourite = !contact!.isfavourite;
                  iconcubit.changefill();
                },
                child: (BlocConsumer<IconCubit, IconState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white.withOpacity(0),
                          child: Icon(
                            (iconcubit.isfilled == true)
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: Color.fromARGB(255, 255, 0, 179),
                          ),
                        ),
                      );
                    })))
          ],
        ));
  }

  Widget buildFavIcon() {
    return (BlocConsumer<IconCubit, IconState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white.withOpacity(0),
              child: Icon(
                (iconcubit.isfilled == true)
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: Color.fromARGB(255, 255, 0, 179),
              ),
            ),
          );
        }));
  }

  Widget buildDetailsContiner() {
    return SingleChildScrollView(
      child: Column(
        children: [
          DetailsInDetails(
              const Icon(
                Icons.call,
                color: Color.fromARGB(255, 255, 89, 0),
              ),
              contact!.phone,
              "Phone|Mobile|Work"),
          const SizedBox(
            height: 10,
          ),
          DetailsInDetails(const Icon(Icons.mail_outline), contact!.email,
              "Email Personal|Work"),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black.withOpacity(0.2)))),
            padding: EdgeInsets.only(right: 10, left: 10, bottom: 20),
            margin: EdgeInsets.only(right: 30, left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonLabelItem(
                    Icon(
                      Icons.whatsapp,
                      color: Colors.green,
                    ),
                    "WhatsApp",
                    9,
                    Color.fromARGB(255, 92, 90, 90)),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: ButtonLabelItem(
                        Icon(
                          Icons.facebook,
                          color: Colors.blue,
                        ),
                        "Messager",
                        9,
                        Color.fromARGB(255, 92, 90, 90))),
                ButtonLabelItem(
                    Icon(
                      Icons.photo_camera_outlined,
                      color: Color.fromARGB(255, 250, 5, 169),
                    ),
                    "Instagram",
                    9,
                    Color.fromARGB(255, 92, 90, 90)),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.all(10), child: ContactHistory(ContactCard.searchMyContacts(contact!.name))),
        ],
      ),
    );
  }
}
