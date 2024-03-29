import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khanban/utils/colors.dart'; 
import 'package:google_fonts/google_fonts.dart';
import 'package:khanban/home/widgets/no_board.dart';
import 'package:khanban/widgets/calendar_button.dart';
import 'package:khanban/widgets/app_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key,}) : super(key: key);

  

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
          const MyAppBar(title: 'BOARD'),
          const SizedBox(height: 50,),
          NoBoard(),
          const SizedBox(height: 200,),
          CalendarButton(),
        ],
      )
    );
  }
}