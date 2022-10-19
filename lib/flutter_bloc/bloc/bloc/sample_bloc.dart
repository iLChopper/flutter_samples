import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'sample_event.dart';
part 'sample_state.dart';

class SampleBloc extends Bloc<SampleEvent, SampleInitialState> {
  SampleBloc() : super(const SampleInitialState(isOn: false)) {
    on<ChangeBotonEvent>((event, emit) {
      emit(state.copyWith(isOn: !state.isOn));
    });
  }
}
