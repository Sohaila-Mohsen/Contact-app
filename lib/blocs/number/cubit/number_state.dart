part of 'number_cubit.dart';

@immutable
abstract class NumberState {}

class NumberInitial extends NumberState {}
class AddNumberState extends NumberState{}
class DeleteNumberState extends NumberState{}