import 'package:contact/blocs/iconc/cubit/icon_cubit.dart';
import 'package:contact/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/number/cubit/number_cubit.dart';
import '../views/history_page.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NumberCubit(),
        ),
        BlocProvider(create: (context) => IconCubit(true)),
      ],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.orange),
        showSemanticsDebugger: false,
        home: HomePage(),
      ),
    );
  }
}
