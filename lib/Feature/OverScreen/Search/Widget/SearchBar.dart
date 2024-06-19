import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      floating: true,
      title: const Text(
        'Search',
        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
      ),
    );
  }
}
