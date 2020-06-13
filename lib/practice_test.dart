import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'test_handler.dart';

class PracticeTestPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return PracticeTestPageState();
  }  
}

class PracticeTestPageState extends State<PracticeTestPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice Test", style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
      ),
      body: TestUI()
    );
  }
}