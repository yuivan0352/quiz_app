import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/monster-hunter-wilds-logo.webp',
            width: 300,
            color: Color.fromARGB(150, 255, 255, 255),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Test Your Monster Hunter Knowledge!",
            style: GoogleFonts.lato(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_circle_right_outlined, size: 40),
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 40,
              ),
            ),
            label: Text(
              "Start Quiz",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}