//import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int countA = 0, countB = 0;

  void TeamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      countA += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      countB += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
