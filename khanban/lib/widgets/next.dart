import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khanban/utils/colors.dart'; 

class Next extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 82,
      decoration: BoxDecoration(
        color: AppColors.azulOscuro,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: SvgPicture.asset("assets/icons/arrowright.svg", height: 45, width: 45, color: AppColors.celeste,),
      ),
    );
  }
}