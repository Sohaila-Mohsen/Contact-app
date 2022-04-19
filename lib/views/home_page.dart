import 'package:contact/components/numbers_bord.dart';
import 'package:contact/views/history_page.dart';
import 'package:contact/views/my_cotact_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/number/cubit/number_cubit.dart';

class HomePage extends StatelessWidget {
  var numberCubit = NumberCubit();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.white,
          bottom: TabBar(
            tabs: [
              Tab(text: 'History'),
              Tab(text: 'My Contact'),
            ],
          ),
          toolbarHeight: 4,
        ),
        body: TabBarView(children: [
          HistoryPage(),
          MyContactPage(),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Colors.white.withOpacity(0.9),
              context: context,
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(0))),
              builder: (context) => NumbersBord(numberCubit),
            );
          },
          child: Icon(Icons.add_ic_call_outlined),
        ),
      ),
    );
  }
}

/*
BlocConsumer<NumberCubit, NumberState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return NumbersBord(numberCubit);
                },
              ),
 */