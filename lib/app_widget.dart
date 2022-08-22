import 'package:flutter/material.dart';
import 'package:wilson_wings/screens/bottomBar/bottom_bar.dart';
import 'package:wilson_wings/screens/reports/presentation/reports.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
    );
  }
}
