import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:khanban/data/database.dart';
import 'package:khanban/home/widgets/board.dart';
import 'package:khanban/utils/colors.dart'; 
import 'package:google_fonts/google_fonts.dart';
import 'package:khanban/home/widgets/no_board.dart';
import 'package:khanban/widgets/calendar_button.dart';
import 'package:khanban/widgets/app_bar.dart';


class HomePage extends StatefulWidget {
  
  HomePage({Key? key,}) : super(key: key);

  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _myBox = Hive.box('myBox');
  khanbanDatabase db = khanbanDatabase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(201, 231, 242, 1),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: MyAppBar(title: 'BOARD'),
      ),

      floatingActionButton: CalendarButton(),

      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Board(
            title: 'Psycosize',
            tags: 'Emprenidimiento',
            person: 'Samu',
          );
        },
      ),
    );
  }
}