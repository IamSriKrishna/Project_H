import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeButtons extends StatefulWidget {
  const HomeButtons({Key? key});

  @override
  State<HomeButtons> createState() => _HomeButtonsState();
}

class _HomeButtonsState extends State<HomeButtons> {
  int _selectedIndex = 0;
  final List<String> _places = [
    "Marina Beach",
    "Kapaleeshwarar Temple",
    "Fort St. George",
    "San Thome Basilica",
    "Government Museum",
    "Valluvar Kottam",
    "Arignar Anna Zoological Park",
    "Birla Planetarium",
    "Guindy National Park",
    "The Theosophical Society",
    "Elliot's Beach (Besant Nagar Beach)",
    "DakshinaChitra",
    "Chennai Central Railway Station",
    "Armenian Church",
    "Kalakshetra Foundation",
    "Thousand Lights Mosque",
    "Semmozhi Poonga",
    "MGR Film City",
    "Chennai Rail Museum",
    "Cholamandal Artists' Village"
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 75.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: CustomScrollView(
          scrollDirection: Axis.horizontal,
          slivers: [
            SliverList.builder(
              itemCount: _places.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: SizedBox(
                      height: double.infinity,
                      width: 160.w,
                      child: Card(
                        elevation: _selectedIndex == index ? 10 : 0,
                        color: _selectedIndex == index
                            ? Colors.black
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            _places[index],
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: TextStyle(
                                color: _selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
