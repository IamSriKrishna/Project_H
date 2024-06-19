import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_h/Util/overscreen/custom_widget.dart';
import 'package:project_h/Util/util.dart';
import 'package:project_h/bloc/overscreen_bloc/overscreen_bloc.dart';
import 'package:project_h/bloc/overscreen_bloc/overscreen_state_bloc.dart';

class OverScreen extends StatefulWidget {
  @override
  State<OverScreen> createState() => _OverScreenState();
}

class _OverScreenState extends State<OverScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OverscreenBloc, OverscreenStateBloc>(
        bloc: overscreenBloc,
        builder: (context, state) {
          return Scaffold(
            body: screens[state.selectedIndex],
            bottomNavigationBar: OverScreenCustomWidget.bottomSalomon(),
          );
        });
  }
}
