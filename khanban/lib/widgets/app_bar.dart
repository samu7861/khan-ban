import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khanban/utils/colors.dart';

class MyAppBar extends StatelessWidget {
  final String title;

  const MyAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 195,
        height: 50,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [ Color.fromRGBO(10, 73, 111, 1), Color.fromRGBO(118, 191, 235, 1) ],
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.monomaniacOne(
              fontSize: 24,
              color: AppColors.azulOscuro,
            ),
          ),
        ),
      ),
    );
  }
}