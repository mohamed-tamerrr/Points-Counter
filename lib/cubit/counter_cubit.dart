import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrement());
  int numberA = 0;
  int numberB = 0;
  void increment({
    required int buttonNumber,
    required String team,
  }) {
    if (team == 'A') {
      numberA += buttonNumber;
      emit(CounterAIncrement());
    }
    if (team == 'B') {
      numberB += buttonNumber;
      emit(CounterBIncrement());
    }
  }

  void ResetCounter() {
    numberB = 0;
    numberA = 0;
    emit(CounterReset());
  }
}
