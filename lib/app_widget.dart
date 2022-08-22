import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wilson_wings/screens/bottomBar/application/bottom_bar_bloc.dart';
import 'package:wilson_wings/screens/bottomBar/presentation/bottom_bar.dart';
import 'package:wilson_wings/screens/reports/bloc/report_bloc.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomBarBloc>(
          create: (BuildContext context) => BottomBarBloc(),
        ),
        BlocProvider<ReportBloc>(
          create: (BuildContext context) => ReportBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomBar(),
      ),
    );
  }
}
