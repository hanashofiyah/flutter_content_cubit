import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> { //counter cubit punya silsilah dari cubit
  CounterCubit() : super(0); //super(0) berarti nilai awal //memanggil constractor dari cubit

  void increment () => emit (state + 1);

  void decrement() {
    emit (state - 1);
  }

  void minus_2() {}

  void multiply() {}
  
}