import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import "package:khanban/utils/colors.dart";




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KHAN/BAN',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(201, 231, 242, 1)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'KHAN/BAN'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: AppColors.celeste,
      body: Center(
        child: Container(
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
                child: const Center(
                  child: Text(
                    'KHAN/BAN',
                    style: TextStyle(
                      color: AppColors.azulOscuro,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto"
                     ),
                  ),
                ),
              ),
              const Text(
                "Samuel Franco García",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const Text(
                "Go to contributions if you enjoyed the project",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SvgPicture.asset("assets/icons/box.svg", height: 45, width: 45, color: AppColors.celeste,)
            ],
          ),
        ),
      ),
     
    );
  }
}