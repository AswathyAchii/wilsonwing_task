import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wilson_wings/core/colors.dart';
import 'package:wilson_wings/core/strings.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 16),
      height: 80,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [purpleLight, purpleDark],
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.only(left: 2, right: 5, top: 10, bottom: 10),
          hintText: "Search report by name, pincode, ID",
          helperStyle: searchHintStyle,
          fillColor: appBackGroundColor,
          filled: true,
          prefixIcon: Container(
            height: 20,
            width: 20,
            margin:
                const EdgeInsets.only(left: 12, right: 12, bottom: 10, top: 10),
            child: SvgPicture.asset(
              "assets/icons/search_icon.svg",
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: appBackGroundColor, width: 1.0),
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: errorColor, width: 1.0),
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
