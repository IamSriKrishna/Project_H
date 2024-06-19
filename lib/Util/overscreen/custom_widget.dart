import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_h/Util/util.dart';
import 'package:project_h/bloc/overscreen_bloc/overscreen_bloc.dart';
import 'package:project_h/bloc/overscreen_bloc/overscreen_event_bloc.dart';
import 'package:project_h/bloc/overscreen_bloc/overscreen_state_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class OverScreenCustomWidget {
  static BlocBuilder bottomSalomon() {
    return BlocBuilder<OverscreenBloc, OverscreenStateBloc>(
      bloc: overscreenBloc,
        builder: (context, state) {
      return SalomonBottomBar(
        currentIndex: state.selectedIndex,
        onTap: (currentIndex) =>
            overscreenBloc.add(SelectedIndex(currentIndex: currentIndex)),
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favourite"),
            selectedColor: Colors.pink,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Settings"),
            selectedColor: Colors.teal,
          ),
        ],
      );
    });
  }
}
