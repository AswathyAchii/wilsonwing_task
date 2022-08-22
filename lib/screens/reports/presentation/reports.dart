import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wilson_wings/core/colors.dart';
import 'package:wilson_wings/core/constants.dart';
import 'package:wilson_wings/core/strings.dart';
import 'package:wilson_wings/screens/reports/widgets/lmtd_vs_mtd.dart';
import 'package:wilson_wings/screens/reports/widgets/on_boarding.dart';
import 'package:wilson_wings/screens/reports/widgets/product_wise.dart';
import 'package:wilson_wings/screens/reports/widgets/profile_details.dart';
import 'package:wilson_wings/screens/reports/widgets/search_container.dart';

class Reports extends StatelessWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackGroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const ProfileDetails(),
            Expanded(
              child: SizedBox(
                height: 300,
                child: ListView(
                  children: [
                    const SearchContainer(),
                    titleOfReports(),
                    divider(),
                    const OnBoardingSection(),
                    LineChartWidget(),
                    kHeight32,
                    const ProductWise(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding divider() {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 16, left: 20, right: 20),
      child: Divider(
        thickness: 2,
        color: diverReportColor,
      ),
    );
  }

  Padding titleOfReports() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
        left: 20,
      ),
      child: Text(
        "Karnataka Reports",
        style: reportHeading,
      ),
    );
  }
}
