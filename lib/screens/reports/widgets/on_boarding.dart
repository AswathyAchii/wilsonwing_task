import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:wilson_wings/core/colors.dart';
import 'package:wilson_wings/core/constants.dart';
import 'package:wilson_wings/core/strings.dart';

class OnBoardingSection extends StatelessWidget {
  const OnBoardingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [onBoardingHeader(), onBoardingContainer()],
    );
  }

  Container onBoardingContainer() {
    return Container(
      constraints: const BoxConstraints(maxHeight: double.infinity),
      height: 360,
      width: double.infinity,
      child: Neumorphic(
        margin: const EdgeInsets.all(20),
        style: NeumorphicStyle(
          color: neumorphicBgColor,
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.circular(16),
          ),
          depth: 10,
          lightSource: LightSource.topLeft,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              onBoardingHeading(),
              kHeight27,
              onBoardingElement(
                  mainText: 'Master Distributor',
                  subText: '20/50',
                  length: 180),
              kHeight41,
              onBoardingElement(
                  mainText: 'Distributor', subText: '54/75', length: 80),
              kHeight41,
              onBoardingElement(
                  mainText: 'Agent', subText: '175/200', length: 80),
            ],
          ),
        ),
      ),
    );
  }

  Column onBoardingElement({
    required String mainText,
    required String subText,
    required double length,
  }) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(mainText, style: elementMainText),
            Text(subText, style: elementSubText),
          ],
        ),
        kHeight13,
        Stack(
          children: [
            Container(
              height: 6,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xffE4D8EF),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: length),
              child: Container(
                height: 6,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color(0xffF16778),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Row onBoardingHeading() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "User",
          style: userOnBoardingText,
        ),
        Text(
          "Achived/Target",
          style: achivedOnBoardingText,
        ),
      ],
    );
  }

  Padding onBoardingHeader() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Onboarding", style: onBoarding),
          Container(
            height: 32,
            width: 92,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
              border: Border.all(color: onBaordingSideContainerColor),
              color: appBackGroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 6.0,
                right: 6,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "8 Mar",
                    style: onBoardingDate,
                  ),
                  Container(
                    height: 18,
                    width: 18,
                    margin: const EdgeInsets.only(
                        top: 7, bottom: 5, left: 4, right: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: onBaordingSideContainerColor),
                      color: appBackGroundColor,
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: 15,
                      color: onBaordingSideContainerColor,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
