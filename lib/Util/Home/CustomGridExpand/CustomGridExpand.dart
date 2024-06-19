import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_h/Util/Home/CustomGridExpand/CustomGridDescription.dart';
import 'package:project_h/Util/Home/CustomGridExpand/CustomGridImage.dart';
import 'package:project_h/Util/Home/CustomGridExpand/CustomGridOverView.dart';
import 'package:project_h/Util/Home/CustomGridExpand/CustomGridTitle.dart';
import 'package:project_h/bloc/custom_bloc/custom_bloc.dart';

class CustomGridExpand extends StatefulWidget {
  final List<String> img;
  final int index;
  final String title;
  final String area;

  const CustomGridExpand({
    Key? key,
    required this.img,
    required this.index,
    required this.title,
    required this.area,
  }) : super(key: key);

  @override
  State<CustomGridExpand> createState() => _CustomGridExpandState();
}

class _CustomGridExpandState extends State<CustomGridExpand> {
  final CustomBloc _customBloc = CustomBloc();
  @override
  void dispose() {
    _customBloc.close();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //Image
          CustomGridImage(
              index: widget.index, img: widget.img),
          // Title/Area/Rating
          CustomGridTitle(area: widget.area, title: widget.title),
          // Description
          const CustomGridDescription(),
          //OverView
          CustomGridOverview(
            img: widget.img,
          ),
          //Buy Button
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.5)),
                      minimumSize: Size(double.infinity, 35.h)),
                  onPressed: () {},
                  child: Text("Book Now")),
            ),
          )
        ],
      ),
    );
  }
}
