import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final Color borderColor;
  final void Function() onPressed;
  const CustomButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    required this.borderColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: SizedBox(
        width: double.infinity,
        height: 45,
        child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: BorderSide(color: borderColor))),
              backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
            ),
            onPressed: () => onPressed(),
            child: Text(
              text,
              style: GoogleFonts.notoSans(
                  // fontWeight: FontWeight.bold,
                  textStyle: TextStyle(color: textColor)),
            )),
      ),
    );
  }
}
