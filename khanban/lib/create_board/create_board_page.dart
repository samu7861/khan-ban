import 'package:khanban/home/home_page.dart';
import "package:khanban/models/board_info.dart";
import 'package:flutter/material.dart';
import 'package:khanban/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:khanban/widgets/app_bar.dart";
import 'package:khanban/create_board/widgets/text_field.dart';

class CreateBoard extends StatefulWidget {
  const CreateBoard({Key? key}) : super(key: key);

  @override
  _CreateBoardState createState() => _CreateBoardState();
  
}

class _CreateBoardState extends State<CreateBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.azulOscuro,
      body: Column(
        children: [
          SizedBox(height: 50,),
          const MyAppBar(title: 'CREATION'),
          SizedBox(height: 168,),
          Container(
            width: 350,
            height: 350,
            decoration: BoxDecoration(
              color: AppColors.celeste2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Center(
                  child: Column(
                  children: [
                    SizedBox(height: 16),
                    Text(
                      "Title",
                      style: GoogleFonts.monda(
                        fontSize:24,
                        color: AppColors.azulOscuro,
                      ),
                    ),
                    SizedBox(height: 6),
                    const TextFieldBoard(),
                    SizedBox(height: 16),
                    Text(
                      "Tags",
                      style: GoogleFonts.monda(
                        fontSize:24,
                        color: AppColors.azulOscuro,
                      ),
                    ),
                    SizedBox(height: 6),
                    const TextFieldBoard(),
                    SizedBox(height: 16),
                    Text(
                      "Person",
                      style: GoogleFonts.monda(
                        fontSize:24,
                        color: AppColors.azulOscuro,
                      ),
                    ),
                    SizedBox(height: 6),
                    const TextFieldBoard(),
                    
                  ],
                ),
                ),
                
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    icon: Icon(Icons.close, size: 30,),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 46),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  color: AppColors.celeste,
                  borderRadius: BorderRadius.circular(5),
              ),
                child: Center(
                  child: Icon(Icons.save, size: 50, color: AppColors.azulOscuro,),
                      ),
                    ),
                  ),                                  
        ],
      )
    );
  }
}