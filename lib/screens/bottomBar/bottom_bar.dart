import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wilson_wings/core/colors.dart';
import 'package:wilson_wings/core/constants.dart';

class BottomBar extends StatelessWidget {
  BottomBar({Key? key}) : super(key: key);
  int pageIndex = 0;

  final pages = [
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: 72,
          color: appBackGroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              bottomBar(image: 'assets/icons/home.png', title: 'Home'),
              bottomBar(image: 'assets/icons/Team.png', title: 'Team'),
              bottomBar(image: 'assets/icons/reports.png', title: 'Reports'),
              bottomBar(
                  image: 'assets/icons/Attendance.png', title: 'Attendance'),
            ],
          ),
        ),
        body: pages[pageIndex]);
  }

  Column bottomBar({
    required String title,
    required String image,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: 21,
          width: 23,
        ),
        kHeight06,
        Text(title)
      ],
    );
  }
}
