import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomGridTitle extends StatelessWidget {
  final String title;
  final String area;
  const CustomGridTitle({super.key, required this.area, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title/Area & Rating
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // title/Area
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      area,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.sp,
                      ),
                    ),
                  ],
                ),
                // Rating
                Row(
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                      size: 15.h,
                    ),
                  ],
                )
              ],
            ),
            // Location
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Icon(Icons.location_on),
                    InkWell(
                      onTap: () async {
                        await launchUrl(Uri.parse(
                            "https://www.google.com/maps/search/?api=1&query=${Uri.encodeComponent('117/10,1st lane, cs colony, indira nagar, adyar, chennai')}"));
                      },
                      child: Text(
                        "To The Location",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
