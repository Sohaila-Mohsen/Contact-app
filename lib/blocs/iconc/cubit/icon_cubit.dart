import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'icon_state.dart';

class IconCubit extends Cubit<IconState> {
  IconCubit(this.isfilled) : super(IconInitial());
  static IconCubit get(context) => BlocProvider.of(context);
  bool isfilled;

  changefill() {
    isfilled = !isfilled;
    print(isfilled);
    emit(ChangeFillState());
  }
}
