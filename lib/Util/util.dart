import 'package:flutter/material.dart';
import 'package:project_h/Feature/OverScreen/Favourite/Favourite.dart';
import 'package:project_h/Feature/OverScreen/Home/Home.dart';
import 'package:project_h/Feature/OverScreen/Profile/Profile.dart';
import 'package:project_h/Feature/OverScreen/Search/Search.dart';
import 'package:project_h/bloc/custom_bloc/custom_bloc.dart';
import 'package:project_h/bloc/overscreen_bloc/overscreen_bloc.dart';

final OverscreenBloc overscreenBloc = OverscreenBloc();
final CustomBloc customBloc = CustomBloc();
final List<Widget> screens = const [Home(), Search(), Favourite(), Profile()];
