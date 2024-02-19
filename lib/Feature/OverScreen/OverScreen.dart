import 'package:flutter/material.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:project_h/Feature/OverScreen/Favourite/Favourite.dart';
import 'package:project_h/Feature/OverScreen/Home/Home.dart';
import 'package:project_h/Feature/OverScreen/Profile/Profile.dart';
import 'package:project_h/Feature/OverScreen/Search/Search.dart';

class OverScreen extends StatefulWidget {
  const OverScreen({Key? key}) : super(key: key);

  @override
  State<OverScreen> createState() => _OverScreenState();
}

class _OverScreenState extends State<OverScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    Home(),
    Search(),
    Favourite(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: IndexedStack(
              index: _selectedIndex,
              children: _screens,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: CrystalNavigationBar(
              currentIndex: _selectedIndex,
              onTap: (currentIndex) {
                setState(() {
                  _selectedIndex = currentIndex;
                });
              },
              indicatorColor: Colors.white,
              backgroundColor: Colors.black.withOpacity(0.15),
              items: [
                CrystalNavigationBarItem(
                  icon: Icons.home,
                  unselectedIcon: Icons.home_outlined,
                  selectedColor: Colors.black,
                  unselectedColor: Colors.white,
                ),
                CrystalNavigationBarItem(
                  icon: Icons.search,
                  selectedColor: Colors.black,
                  unselectedIcon: Icons.search_outlined,
                  unselectedColor: Colors.white,
                ),
                CrystalNavigationBarItem(
                  icon: Icons.favorite,
                  selectedColor: Colors.black,
                  unselectedIcon: Icons.favorite_outline,
                  unselectedColor: Colors.white,
                ),
                CrystalNavigationBarItem(
                  icon: Icons.person,
                  selectedColor: Colors.black,
                  unselectedIcon: Icons.person_outline,
                  unselectedColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
