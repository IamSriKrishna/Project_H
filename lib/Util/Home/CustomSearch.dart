import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_h/Util/util.dart';
import 'package:project_h/bloc/overscreen_bloc/overscreen_bloc.dart';
import 'package:project_h/bloc/overscreen_bloc/overscreen_event_bloc.dart';
import 'package:project_h/bloc/overscreen_bloc/overscreen_state_bloc.dart';

class HomeSearch extends StatefulWidget {
  const HomeSearch({super.key});

  @override
  State<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Discover\nYour New House",
              style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10.h,
            ),
            BlocBuilder<OverscreenBloc, OverscreenStateBloc>(
                bloc: overscreenBloc,
                builder: (context, state) {
                  return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: TextField(
                          readOnly: true,
                          onTap: () => overscreenBloc
                              .add(SelectedIndex(currentIndex: 1)),
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: 'Search'),
                        ),
                      ));
                })
          ],
        ),
      ),
    );
  }
}
