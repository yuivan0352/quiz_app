import 'package:flutter/material.dart';

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
                children: [
                  Text(((data['question_index'] as int) + 1).toString()),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 1, 
                    child: Column(
                      children: [
                        Text(data['question'] as String),
                        const SizedBox(height: 5),
                        Text(data['user_answer'] as String),
                        Text(data['correct_answer'] as String),
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
