import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:wilson_wings/core/colors.dart';
import 'package:wilson_wings/core/constants.dart';
import 'package:wilson_wings/core/strings.dart';

class ProductWise extends StatelessWidget {
  const ProductWise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [productWiseHeader(), productWiseContainer()],
    );
  }

  Padding productWiseHeader() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Product Wise", style: productWiseScetionHeading),
          Container(
            height: 32,
            width: 151,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
              border: Border.all(color: productWiseSideContainerColor),
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
                    "8 Mar - 23 Mar",
                    style: onBoardingDate,
                  ),
                  Container(
                    height: 18,
                    width: 18,
                    margin: const EdgeInsets.only(
                        top: 7, bottom: 5, left: 4, right: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: productWiseSideContainerColor),
                      color: appBackGroundColor,
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: 15,
                      color: productWiseSideContainerColor,
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

  Container productWiseContainer() {
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
              Padding(
                padding: const EdgeInsets.only(bottom: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("LMTD", style: lmtdText),
                    Text("PRODUCTS", style: productsText),
                    Text("MTD", style: lmtdText)
                  ],
                ),
              ),
              onBoardingElement(
                container1Length: 45,
                container2Length: 30,
                middleText: ' DMT',
                percentage1: '45%',
                percentage2: '55%',
              ),
              kHeight20,
              onBoardingElement(
                container1Length: 100,
                container2Length: 60,
                middleText: ' MATM',
                percentage1: '15%',
                percentage2: '4%',
              ),
              kHeight20,
              onBoardingElement(
                container1Length: 20,
                container2Length: 100,
                middleText: ' BANKING',
                percentage1: '65%',
                percentage2: '12%',
              ),
              kHeight20,
              onBoardingElement(
                container1Length: 20,
                container2Length: 100,
                middleText: ' BBPS',
                percentage1: '12%',
                percentage2: '48%',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Column onBoardingElement({
  required String percentage1,
  required String percentage2,
  required String middleText,
  required double container1Length,
  required double container2Length,
}) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(percentage1, style: sideText1),
          Text(middleText, style: middleText1),
          Text(percentage2, style: sideText1),
        ],
      ),
      kHeight13,
      Row(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Container(
                  height: 6,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color(0xffE4D8EF),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: container1Length),
                  child: Container(
                    height: 6,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color(0xffF16778),
                    ),
                  ),
                ),
              ],
            ),
          ),
          kWidth16,
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Container(
                  height: 6,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color(0xffE4D8EF),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: container2Length),
                  child: Container(
                    height: 6,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color(0xff748BC5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    ],
  );
}
