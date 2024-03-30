import 'package:flutter/material.dart';
import "package:khanban/utils/colors.dart";
import 'package:google_fonts/google_fonts.dart';

class Board extends StatelessWidget {

  final String title;
  final String tags;
  final String person;

  const Board({Key? key, required this.title, required this.tags, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        widthFactor: 1,
        child: Container(
        margin: const EdgeInsets.only(top: 20),
        height: 150,
        width: 350,
        decoration: BoxDecoration(
          color: AppColors.celeste2,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            SizedBox(height: 8),
            Row(
              children: [
                SizedBox(width: 20),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 3, 
                      color: Color(0xFF1F597D),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  tags,
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: AppColors.azulOscuro,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Center(
              child: Text(
                title,
                style: GoogleFonts.niramit(
                  fontSize: 32,
                  color: AppColors.azulOscuro,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 3, 
                      color: Color(0xFF1F597D),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  person,
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: AppColors.azulOscuro,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}