import 'package:bloc/bloc.dart';
import 'package:flutter_content_cubit/counter_cubit/cubit/view/counter/counter_cubit.dart';
import 'package:flutter_content_cubit/counter_observer.dart';

void main() {
  Bloc.observer =  const CounterObserver();

  CounterCubit counter = CounterCubit();

  counter.increment();
  counter.decrement();
}