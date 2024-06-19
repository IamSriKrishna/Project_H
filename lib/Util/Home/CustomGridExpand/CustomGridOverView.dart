import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_h/Util/util.dart';
import 'package:project_h/bloc/custom_bloc/custom_bloc.dart';
import 'package:project_h/bloc/custom_bloc/custom_event_bloc.dart';
import 'package:project_h/bloc/custom_bloc/custom_state_bloc.dart';

class CustomGridOverview extends StatefulWidget {
  final List<String> img;
  CustomGridOverview(
      {super.key, required this.img});

  @override
  State<CustomGridOverview> createState() => _CustomGridOverviewState();
}

class _CustomGridOverviewState extends State<CustomGridOverview> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'OverView',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
            ),
            BlocBuilder<CustomBloc,CustomStateBloc>(
              bloc: customBloc,
              builder: (context,state) {
                return SizedBox(
                    height: 60.h,
                    child: CustomScrollView(
                      scrollDirection: Axis.horizontal,
                      slivers: [
                        SliverList.builder(
                          itemCount: widget.img.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(left: index == 0 ? 0 : 10),
                              child: InkWell(
                                onTap: () => customBloc.add(OnCurrentImage(index: index)),
                                child: Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Container(
                                    height: double.infinity,
                                    width: 60.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image:
                                                NetworkImage(widget.img[index]))),
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ));
              }
            )
          ],
        ),
      ),
    );
  }
}
