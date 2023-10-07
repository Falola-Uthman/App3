import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdApp2 extends StatelessWidget {
  const ThirdApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 160),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Welcome!',
                  style: GoogleFonts.inter(
                      textStyle:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 32)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Sign in or create a new account',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(fontSize: 16),
                        color: Color(0xFF7C7C7C))),
                SizedBox(
                  height: 100,
                ),
                Image.asset('assets/images/thirdapp2.png'),
                FilledButton(onPressed: () {}, child: Text('Sign in'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
