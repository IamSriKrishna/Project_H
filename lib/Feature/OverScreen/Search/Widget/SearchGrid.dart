import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_h/Model/HomeModel.dart';
import 'package:project_h/Util/Home/CustomGridExpand/CustomGridExpand.dart';

class SearchGrid extends StatelessWidget {
  final List<HomeModel> filteredHomeModel;
  final int currentIndex; // Add currentIndex as a parameter

  const SearchGrid({
    Key? key,
    required this.filteredHomeModel,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: filteredHomeModel.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.5.h,
          mainAxisSpacing: 10.w,
        ),
        // Inside SliverGrid.builder
        itemBuilder: (context, index) {
          if (filteredHomeModel.isEmpty) {
            return Center(
              child: Text(
                'No places found',
                style: TextStyle(fontSize: 18),
              ),
            );
          } else {
            return DelayedDisplay(
              delay: Duration(milliseconds: index * 50),
              child: InkWell(
                onTap: () {
                  Get.to(() => CustomGridExpand(
                        img: filteredHomeModel[index].img,
                        index: index,
                        title: filteredHomeModel[index].title,
                        area: filteredHomeModel[index].area,
                      ));
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.w),
                  ),
                  elevation: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.w),
                          topLeft: Radius.circular(15.w),
                        ),
                        child: AnimatedSwitcher(
                          duration: Duration(milliseconds: 500),
                          child: Image.network(
                            filteredHomeModel[index].img[currentIndex],
                            height: MediaQuery.of(context).size.height * 0.25,
                            width: double.infinity,
                            key: Key(currentIndex.toString()),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.w, left: 5.w),
                        child: Text(
                          filteredHomeModel[index].title,
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.w),
                        child: Text(
                          filteredHomeModel[index].area,
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 8.w, top: 5.w, bottom: 5.w),
                        child: Text(
                          '₹35,0000',
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        });
  }
}
