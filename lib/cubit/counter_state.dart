part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}
class CounterAIncrementState extends CounterState {}
class CounterBIncrementState extends CounterState {}

