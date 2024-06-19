import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_h/bloc/overscreen_bloc/overscreen_event_bloc.dart';
import 'package:project_h/bloc/overscreen_bloc/overscreen_state_bloc.dart';

class OverscreenBloc extends Bloc<OverscreenEventBloc, OverscreenStateBloc> {
  OverscreenBloc() : super(const OverscreenStateBloc()) {
    on<SelectedIndex>((event, emit) {
      print('Selected Index: ${event.currentIndex}');
      emit(state.copyWith(selectedIndex: event.currentIndex));
    });
  }
}
