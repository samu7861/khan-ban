import 'package:flutter/material.dart';
import 'package:khanban/home/home_page.dart';
import 'package:khanban/create_board/create_board_page.dart';

class CalendarButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
          return 
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateBoard(),
                  ));
                },
                child: Image.asset("assets/images/Icono.png", height: 55, width: 55,),
              );
  }
}