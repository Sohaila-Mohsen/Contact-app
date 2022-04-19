import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'number_state.dart';

class NumberCubit extends Cubit<NumberState> {
  NumberCubit() : super(NumberInitial());
  static NumberCubit get(context) => BlocProvider.of(context);
  String number = "";

  addNumber(String n) {
    number += n;
    print(number);
    emit(AddNumberState());
  }

  deleteNumber() {
    if (number.length > 0) {
      number = number.substring(0, number.length - 1);
      print(number);
      emit(DeleteNumberState());
    }
  }
}
