import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_slot_seller/Data/Models/PlacesData.dart';
import 'package:parking_slot_seller/Features/Screens/Home/AddPlace.dart';
import 'package:parking_slot_seller/Resources/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PlaceData> placeList;

  @override
  void setState(fn) {
    super.setState(fn);
    //
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Scaffold(
          body: ListView.builder(
            itemBuilder: (context, index) {
              return Card();
            },
            itemCount: placeList.length,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(
                AddPlace(),
              );
            },
            child: Icon(Icons.add),
            backgroundColor: COLOR_CARIBBEAN_GREEN,
          ),
        ),
      ),
    );
  }
}
