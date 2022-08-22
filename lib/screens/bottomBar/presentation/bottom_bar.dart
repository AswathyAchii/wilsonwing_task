import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wilson_wings/core/colors.dart';
import 'package:wilson_wings/core/constants.dart';
import 'package:wilson_wings/screens/bottomBar/application/bottom_bar_bloc.dart';
import 'package:wilson_wings/screens/reports/presentation/reports.dart';

class BottomBar extends StatelessWidget {
  BottomBar({Key? key}) : super(key: key);
  int pageIndex = 0;

  final pages = [
    Container(color: Colors.amber),
    Container(color: Colors.red),
    const Reports(),
    Container(color: Colors.green),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBarBloc, BottomBarState>(
      builder: (context, state) {
        return Scaffold(
            backgroundColor: appBackGroundColor,
            bottomNavigationBar: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                bottomBar(
                  image: 'assets/icons/home.png',
                  title: 'Home',
                  indicatorColor: state.index == 0
                      ? bottomBarIndicatorColor
                      : Colors.transparent,
                  press: () {
                    context
                        .read<BottomBarBloc>()
                        .add(const BottomBarEvent.getCurrentIndex(index: 0));
                  },
                ),
                bottomBar(
                  image: 'assets/icons/Team.png',
                  title: 'Team',
                  indicatorColor: state.index == 1
                      ? bottomBarIndicatorColor
                      : Colors.transparent,
                  press: () {
                    context
                        .read<BottomBarBloc>()
                        .add(const BottomBarEvent.getCurrentIndex(index: 1));
                  },
                ),
                bottomBar(
                  image: 'assets/icons/reports.png',
                  title: 'Reports',
                  indicatorColor: state.index == 2
                      ? bottomBarIndicatorColor
                      : Colors.transparent,
                  press: () {
                    context
                        .read<BottomBarBloc>()
                        .add(const BottomBarEvent.getCurrentIndex(index: 2));
                  },
                ),
                bottomBar(
                  image: 'assets/icons/Attendance.png',
                  title: 'Attendance',
                  indicatorColor: state.index == 3
                      ? bottomBarIndicatorColor
                      : Colors.transparent,
                  press: () {
                    context
                        .read<BottomBarBloc>()
                        .add(const BottomBarEvent.getCurrentIndex(index: 3));
                  },
                ),
              ],
            ),
            body: pages[state.index]);
      },
    );
  }

  GestureDetector bottomBar({
    required String title,
    required String image,
    required Color indicatorColor,
    required VoidCallback press,
  }) {
    return GestureDetector(
      onTap: press,
      child: Container(
        color: appBackGroundColor,
        height: 72,
        width: 83,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    image,
                    height: 21,
                    width: 23,
                  ),
                  kHeight06,
                  Text(title),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                height: 3,
                color: indicatorColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
