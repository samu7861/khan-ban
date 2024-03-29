import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khanban/utils/colors.dart';

class TextFieldBoard extends StatelessWidget {
  const TextFieldBoard({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 245,
      height: 45,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [ Color.fromRGBO(10, 73, 111, 1), Color.fromRGBO(118, 191, 235, 1) ],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(left: 20),
          hintStyle: GoogleFonts.monda(
            fontSize: 14,
            color: AppColors.azulOscuro,
          ),
        ),
      ),
    );
  }
}