import 'package:flutter/material.dart';
import 'package:furll_project/resources/colors.dart';

class UserProfileIcon extends StatelessWidget {
  final double radius;
  const UserProfileIcon({
    super.key,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CircleAvatar(
        backgroundColor: TColor.secondary,
        radius: radius + 1.5,
        // child: ClipOval(
        //     child: Image.asset(
        //   'assets/image1.png',
        //   fit: BoxFit.cover,
        //   width: 90.0,
        //   height: 90.0,
        // )),
        child: CircleAvatar(
          radius: radius,
          backgroundImage: const ExactAssetImage('assets/image1.png'),
        ),
      ),
    );
  }
}
