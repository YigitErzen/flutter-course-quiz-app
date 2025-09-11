import 'package:flutter/material.dart';


class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row (
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Padding(
                   padding: const EdgeInsets.only(right: 20),
                   child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: data['user_answer'] == data['correct_answer']
                      ? const Color.fromARGB(255, 0, 242, 255)
                      : const Color.fromARGB(255, 255, 177, 177),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        ((data['questions_index'] as int) + 1).toString(),
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                   ),
                 ),
                Expanded(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(data['question'] as String,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      data['user_answer'] as String,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: data['user_answer'] == data['correct_answer']
                            ? Color.fromARGB(255, 0, 242, 255)
                            : Color.fromARGB(255, 255, 177, 177),
                      ),
                    ),
                    Text(data['correct_answer'] as String,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 242, 255),
                    ),
                    ),
                  ],
                             ),
                )
              ],
             );
            },
        ).toList(),
        ),
      ),
    );
  }
}
    
