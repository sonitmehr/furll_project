import 'package:flutter/material.dart';
import 'package:furll_project/resources/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String name;
  const CustomAppBar({super.key, required this.name});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.grey[50],
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: TColor.secondary0, // shadow color
              spreadRadius: 0, // spread radius
              blurRadius: 0, // blur radius
              offset: const Offset(0, 1), // changes position of shadow
            ),
            BoxShadow(
              color: Theme.of(context).scaffoldBackgroundColor,
              spreadRadius: 0, // spread radius
              blurRadius: 0, // blur radius
              offset: const Offset(0, -5), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(Icons.arrow_back),
              ),
              Expanded(
                  child: Text(
                name,
                style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.bold,
                    textStyle: TextStyle(fontSize: 16)),
                // style: TextStyle(fontSize: 16, color: TColor.primary),
              )),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(Icons.search),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(Icons.bookmark_outline),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(Icons.shopping_bag_outlined),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
    // return AppBar(
    //   leading: const Icon(Icons.arrow_back),
    //   title: ,
    // );
  }
}
