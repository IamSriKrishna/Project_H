import 'package:flutter/material.dart';
import 'package:project_h/Util/Home/CustomButtons.dart';
import 'package:project_h/Util/Home/CustomGridView.dart';
import 'package:project_h/Util/Home/CustomSearch.dart';
import 'package:project_h/Util/Home/CustomSliverAppBar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CustomSliverAppbar(),
          HomeSearch(),
          HomeButtons(),
          CustomGridView(),
        ],
      ),
    );
  }
}
