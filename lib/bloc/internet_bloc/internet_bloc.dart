import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_tutorial/bloc/internet_bloc/internet_event.dart';
import 'package:flutter_bloc_tutorial/bloc/internet_bloc/internet_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  InternetBloc() : super(InternetInitialState()) {
    on<InternetLostEvent>(
      (event, emit) => InternetLostState(),
    );
    on<InternetGainEvent>(
      (event, emit) => InternetGainState(),
    );
  }
}
