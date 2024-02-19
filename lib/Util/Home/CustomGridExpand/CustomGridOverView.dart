import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGridOverview extends StatefulWidget {
  final List<String> img;
  final Function(int) onImageChanged;
  CustomGridOverview(
      {super.key, required this.img, required this.onImageChanged});

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
            SizedBox(
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
                            onTap: () => widget.onImageChanged(index),
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
                ))
          ],
        ),
      ),
    );
  }
}
