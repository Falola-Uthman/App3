import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdApp5 extends StatelessWidget {
  const ThirdApp5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 11,
              ),
              SizedBox(
                height: 100,
              ),
              Image.asset('assets/images/thirdapp5.png'),
              SizedBox(
                height: 31,
              ),
              Text(
                'Select Location',
                style: GoogleFonts.inter(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 20)),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                  "Let's find your next event. Stay in tune with\nwhat's happening in your area!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(fontSize: 17),
                      color: Color(0xFF7C7C7C))),
              SizedBox(
                height: 250,
              ),
              FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                      minimumSize: Size(350, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Color(0xFF0DCDAA)),
                  child: Text(
                    'Choose city',
                    style:
                        GoogleFonts.inter(textStyle: TextStyle(fontSize: 16)),
                  )),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
