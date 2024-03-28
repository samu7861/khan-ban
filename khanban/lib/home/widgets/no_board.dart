import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khanban/utils/colors.dart'; 
import 'package:khanban/home/home_page.dart'; 

class NoBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      Container(
        margin: const EdgeInsets.only(top: 200),
        height: 150,
        width: 350,
        decoration: BoxDecoration(
          color: AppColors.celeste2,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 46),
              Text(
                'You have no boards yet',
                style: GoogleFonts.monda(
                  fontSize: 14,
                  color: AppColors.azulOscuro,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Add one by pressing the calendar!',
                style: GoogleFonts.monda(
                  fontSize: 14,
                  color: AppColors.azulOscuro,
                ),
              ),
              SizedBox(height: 10),
              
            ],
          ),
        ),
      );
  }
}