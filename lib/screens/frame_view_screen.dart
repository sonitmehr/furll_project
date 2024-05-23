import 'package:flutter/material.dart';
import 'package:furll_project/widgets/app_bar.dart';

class FrameViewScreen extends StatelessWidget {
  const FrameViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
    );
  }
}
