import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thirdapp/thirdapp3.dart';

class ThirdApp2 extends StatelessWidget {
  const ThirdApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
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
              SizedBox(
                height: 120,
              ),
              FilledButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (context) {
                      return ThirdApp3();
                    }));
                  },
                  style: FilledButton.styleFrom(
                      minimumSize: Size(350, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Color(0xFF0DCDAA)),
                  child: Text(
                    'Sign in',
                    style:
                        GoogleFonts.inter(textStyle: TextStyle(fontSize: 16)),
                  )),
              SizedBox(
                height: 10,
              ),
              OutlinedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (context) {
                      return ThirdApp3();
                    }));
                  },
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(350, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                    'No account yet? ' 'Sign up',
                    style: GoogleFonts.inter(
                        textStyle:
                            TextStyle(fontSize: 16, color: Colors.black)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
