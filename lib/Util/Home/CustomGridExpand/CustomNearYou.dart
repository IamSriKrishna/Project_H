import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNearYouText extends StatelessWidget {
  const CustomNearYouText({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Houses Near You",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
