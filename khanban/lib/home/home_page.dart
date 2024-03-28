import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khanban/utils/colors.dart'; 
import 'package:khanban/widgets/infoProyect.dart';
import 'package:khanban/widgets/next.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khanban/home/widgets/no_board.dart';
import 'package:khanban/widgets/calendar_button.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(201, 231, 242, 1),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Center(
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
                  'BOARD',
                  style: GoogleFonts.monomaniacOne(
                    fontSize: 24,
                    color: AppColors.azulOscuro,
                  ),
                ),
              ),
              )
          ),
          const SizedBox(height: 50,),
          NoBoard(),
          const SizedBox(height: 200,),
          CalendarButton(),
        ],
      )
    );
  }
}