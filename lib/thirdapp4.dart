import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thirdapp/thirdapp5.dart';

class ThirdApp4 extends StatefulWidget {
  const ThirdApp4({super.key});

  @override
  State<ThirdApp4> createState() => _ThirdApp3State();
}

class _ThirdApp3State extends State<ThirdApp4> {
  bool passwordVisible = true;
  bool passwordVisible2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 10, 20, 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create new account',
                style: GoogleFonts.inter(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 24)),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                'Full Name',
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF7C7C7C))),
              ),
              TextField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.send,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                      hintText: 'Enter your full name',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)))),
              SizedBox(
                height: 20,
              ),
              Text(
                'Email address',
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF7C7C7C))),
              ),
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.send,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                      hintText: 'name@example.com',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)))),
              SizedBox(
                height: 20,
              ),
              Text(
                'Password',
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF7C7C7C))),
              ),
              TextField(
                  keyboardType: TextInputType.text,
                  obscureText: passwordVisible,
                  textInputAction: TextInputAction.send,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                          icon: Icon(Icons.remove_red_eye_outlined,
                              color: Colors.grey)),
                      hintText: 'Enter your password',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFF2F2F2)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)))),
              SizedBox(
                height: 20,
              ),
              Text(
                'Re-Enter Password',
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF7C7C7C))),
              ),
              TextField(
                  keyboardType: TextInputType.text,
                  obscureText: passwordVisible2,
                  textInputAction: TextInputAction.send,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passwordVisible2 = !passwordVisible2;
                            });
                          },
                          icon: Icon(Icons.remove_red_eye_outlined,
                              color: Colors.grey)),
                      hintText: 'Enter your password',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFF2F2F2)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)))),
              SizedBox(
                height: 200,
              ),
              FilledButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (context) {
                      return ThirdApp5();
                    }));
                  },
                  style: FilledButton.styleFrom(
                      minimumSize: Size(350, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Color(0xFF0DCDAA)),
                  child: Text(
                    'Sign up',
                    style:
                        GoogleFonts.inter(textStyle: TextStyle(fontSize: 16)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
