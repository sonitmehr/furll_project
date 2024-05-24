// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furll_project/resources/colors.dart';
import 'package:furll_project/screens/edit_screen.dart';
import 'package:furll_project/widgets/app_bar.dart';
import 'package:furll_project/widgets/custom_button.dart';
import 'package:furll_project/widgets/thick_divider.dart';
import 'package:furll_project/widgets/user_profile_icon.dart';
import 'package:google_fonts/google_fonts.dart';

import '../provider/collage_provider.dart';

class FrameViewScreen extends StatefulWidget {
  FrameViewScreen({super.key});

  @override
  State<FrameViewScreen> createState() => _FrameViewScreenState();
}

class _FrameViewScreenState extends State<FrameViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        name: 'Jenny\'s Frame',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  UserProfileIcon(radius: 40),
                  Expanded(
                    child: Text(
                      'Jenny Wilson',
                      style: GoogleFonts.notoSans(
                          textStyle: TextStyle(fontSize: 18)),
                    ),
                  )
                ],
              ),
            ),
            ThickDivider(thickness: 9, color: TColor.secondary10),
            SizedBox(
              height: 5,
            ),
            Text(
              'Lorem Ipsum is simply dummy text of printing and typesetting industry lorem ipsum news.',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSans(
                  textStyle: TextStyle(fontSize: 15, color: TColor.primary10)),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '#Organic  |  #ClassyAffair  |  #Multicolor  | #Oversized  |  #Miminalism',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSans(
                    textStyle: TextStyle(fontSize: 15, color: TColor.primary5)),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ThickDivider(thickness: 9, color: TColor.secondary10),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Text(
                'Your Frames',
                style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.bold,
                    textStyle: TextStyle(fontSize: 16)),
              ),
            ),
            SizedBox(
              height: 300,
              child: Stack(
                children: Collage.images
                    .map((imageData) => DraggableImage(
                          imageData: imageData,
                          isDraggable: false,
                        ))
                    .toList(),
              ),
            ),
            CustomButton(
              text: 'Edit Frames',
              textColor: TColor.primary5,
              buttonColor: Colors.white,
              borderColor: TColor.primary5,
              onPressed: () {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditScreen()))
                    .then((value) => setState(() {}));
              },
            )
          ],
        ),
      ),
    );
  }
}
