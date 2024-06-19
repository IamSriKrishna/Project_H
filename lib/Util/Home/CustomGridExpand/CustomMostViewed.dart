import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMostViewedText extends StatelessWidget {
  const CustomMostViewedText({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Most Viewed House",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
