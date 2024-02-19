import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_h/Widget/ReadMoreText.dart';

class CustomGridDescription extends StatelessWidget {
  const CustomGridDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
        child: ReadMoreText(
            text:
                'A well-structured 3BHK house seamlessly integrates three bedrooms, a spacious living room, a modern kitchen, and multiple bathrooms. Thoughtful storage solutions, contemporary fixtures, and attention to detail enhance comfort and functionality throughout the home. It offers a harmonious blend of practicality and elegance, providing a comfortable and inviting sanctuary for its occupants.',
            textStyle: TextStyle(fontSize: 15.sp, color: Colors.grey)),
      ),
    );
  }
}
