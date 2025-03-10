import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: data['user_answer'] == data['correct_answer'] ?const Color.fromARGB(255, 118, 189, 243) : Color.fromARGB(255, 218, 79, 216),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Text(
                            data['question'] as String,
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              data['user_answer'] as String,
                              style: GoogleFonts.lato(
                                fontSize: 16,
                                color: data['user_answer'] == data['correct_answer'] ?const Color.fromARGB(255, 1, 49, 86) : Color.fromARGB(255, 111, 53, 148),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              data['correct_answer'] as String,
                              style: GoogleFonts.lato(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 1, 49, 86),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                );
              }
            ).toList(),
        ),
      ),
    );
  }
}
