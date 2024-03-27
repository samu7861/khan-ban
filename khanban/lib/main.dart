import 'package:flutter/material.dart';
import "package:khanban/utils/colors.dart";
import 'package:khanban/widgets/infoProyect.dart';
import 'package:khanban/widgets/next.dart';




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
      body: Column(
        children: [
          const SizedBox(height: 286,),
          Center(
        child: InfoProyect()
      ),
      const SizedBox(height: 180,),
      Next()

        ],
      )
    );
  }
}