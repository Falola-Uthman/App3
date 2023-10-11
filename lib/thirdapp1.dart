import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thirdapp/thirdapp2.dart';

class ThirdApp1 extends StatelessWidget {
  const ThirdApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0DCDAA),
        body: Center(
          child: SingleChildScrollView(
            child: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (context) {
                  return ThirdApp2();
                }));
              },
              child: Text(
                'Flut',
                style: GoogleFonts.bubblegumSans(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 75,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          ),
        ));
  }
}
