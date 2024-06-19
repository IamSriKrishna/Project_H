import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_h/bloc/custom_bloc/custom_event_bloc.dart';
import 'package:project_h/bloc/custom_bloc/custom_state_bloc.dart';

class CustomBloc extends Bloc<CustomEventBloc, CustomStateBloc> {
  CustomBloc() : super(CustomStateBloc()) {
    on<OnCurrentImage>((event, emit) {
      emit(state.copyWith(index: event.index));
    });
  }
}
