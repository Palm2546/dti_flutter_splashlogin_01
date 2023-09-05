// ignore_for_file: unused_import, prefer_const_constructors

import 'package:dti_flutter_splashlogin_01/views/login_4_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {

  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      ()=>Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Login4UI(),
        ),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 213, 182),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/95.png',
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                Text(
                  'DTI APP 95',
                  style: GoogleFonts.righteous(
                    fontSize: MediaQuery.of(context).size.width * 0.1,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'V.1.7.8',
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.01,
                ),
                Text(
                  'Created By : Thanakon DTI-SAU',
                  style: GoogleFonts.itim(
                    color: const Color.fromARGB(255, 126, 124, 124)
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}