import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oneproject/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterA());

  int teamApoint = 0;

  int teamBpoint = 0;

  teamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamApoint += buttonNumber;
      emit(CounterA());
    } else if (team == 'B') {
      teamBpoint += buttonNumber;
      emit(Counterb());
    }
  }
  team({required String team}){
      if (team == 'A') {
      teamApoint =0;
      emit(CounterA());
    } else if (team == 'B') {
      teamBpoint=0;
      emit(Counterb());
    }
  }
}
