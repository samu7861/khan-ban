import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:khanban/utils/colors.dart";

class InfoProyect extends StatefulWidget {
  @override
  _InfoProyectState createState() => _InfoProyectState();
}

class _InfoProyectState extends State<InfoProyect> {
  @override
  Widget build(BuildContext context) {
   return Container(
      height: 280,
      width: 280,
      decoration: BoxDecoration(
        color: AppColors.azulOscuro,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const SizedBox(height: 15),
          Container(
            width: 200,
            height: 60,
            decoration: BoxDecoration(
              color: AppColors.celeste,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                'KHAN/BAN',
                style: GoogleFonts.monomaniacOne(
                  fontSize: 36,
                ),
              ),
            ),
          ),
          const SizedBox(height: 29),
          Text(
            "Samuel Franco García",
            textAlign: TextAlign.center,
            style: GoogleFonts.monda(
              color: AppColors.blanco,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 29),
          Text(
            "Go to contributions if you enjoyed the project",
            textAlign: TextAlign.center,
            style: GoogleFonts.monda(
              color: AppColors.blanco,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 24),
          SvgPicture.asset("assets/icons/box.svg", height: 45, width: 45, color: AppColors.celeste,)
        ],
      ),
    );
  }
}