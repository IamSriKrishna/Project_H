import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_h/Feature/OverScreen/Search/Widget/SearchBar.dart';
import 'package:project_h/Feature/OverScreen/Search/Widget/SearchGrid.dart';
import 'package:project_h/Model/HomeModel.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int currentIndex = 0;
  late Timer timer;
  late List<HomeModel> filteredHomeModel;
  TextEditingController _searchController = TextEditingController();
  double _bedroomValue = 0;
  double _bathroomValue = 0;
  double _squareValue = 0;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 10), (Timer t) {
      setState(() {
        currentIndex = (currentIndex + 1) % 3;
      });
    });
    filteredHomeModel = List.from(homeModel);
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    timer.cancel();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CustomSearchBar(),
          SliverToBoxAdapter(
            child: _buildSearchBar(),
          ),
          SearchGrid(
              filteredHomeModel: filteredHomeModel, currentIndex: currentIndex)
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                child: TextField(
                  controller: _searchController, // Attach the controller
                  onChanged: (value) {
                    _filterSearchResults(
                        value); // Call filter function on change
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.0.w),
          child: GestureDetector(
            onTap: () {
              _showPriceRangeSelector(); // Call function to show modal bottom sheet
            },
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.settings),
                )),
          ),
        )
      ],
    );
  }

  void _showPriceRangeSelector() {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(35),
        topRight: Radius.circular(35),
      )),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              height: 230.h,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.bed_rounded),
                      ),
                      Text(
                        'Bedroom',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Colors.black,
                    value: _bedroomValue,
                    onChanged: (newValue) {
                      setState(() {
                        _bedroomValue = newValue;
                      });
                    },
                    min: 0,
                    max: 4,
                    divisions: 4,
                    label: _bedroomValue.round().toString(),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.bathtub_outlined),
                      ),
                      Text(
                        'Bathroom',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Colors.black,
                    value: _bathroomValue,
                    onChanged: (newValue) {
                      setState(() {
                        _bathroomValue = newValue;
                      });
                    },
                    min: 0,
                    max: 4,
                    divisions: 4,
                    label: _bathroomValue.round().toString(),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.square_foot_sharp),
                      ),
                      Text(
                        'Square Footage',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Colors.black,
                    value: _squareValue,
                    onChanged: (newValue) {
                      setState(() {
                        _squareValue = newValue;
                      });
                    },
                    min: 0,
                    max: 100000,
                    divisions: 100000,
                    label: _squareValue.round().toString(),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _filterSearchResults(String query) {
    setState(() {
      if (query.isNotEmpty) {
        // Filter the homeModel based on the query
        filteredHomeModel = homeModel
            .where((home) =>
                home.title.toLowerCase().contains(query.toLowerCase()) ||
                home.area.toLowerCase().contains(query.toLowerCase()))
            .toList();
      } else {
        // If the query is empty, display all items
        filteredHomeModel = List.from(homeModel);
      }
    });
  }
}
