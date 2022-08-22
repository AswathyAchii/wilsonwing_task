import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wilson_wings/core/colors.dart';
import 'package:wilson_wings/core/strings.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 6, right: 6, bottom: 6),
      height: 64,
      width: double.infinity,
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage("assets/images/profile_pic.png"),
          radius: 20,
        ),
        title: Text("Sayeed Afsa", style: userName),
        subtitle: Text("State Head", style: position),
        trailing: SizedBox(
          height: 32,
          width: 32,
          child: Neumorphic(
            style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(5)),
              depth: 4,
              lightSource: LightSource.topLeft,
              color: notificatiobBgColor,
            ),
            child: Container(
              margin: const EdgeInsets.all(5),
              child: SvgPicture.asset(
                "assets/icons/Notifications.svg",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
