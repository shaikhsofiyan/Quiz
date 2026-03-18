import 'package:flutter/material.dart';
import '../../models/question.dart';

class QuizPage extends StatefulWidget {
  final String languageName;
  final List<Question> questions;

  const QuizPage({
    super.key,
    required this.languageName,
    required this.questions,
  });

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentIndex = 0;
  final Map<int, int> _selectedAnswers = {};

  void _selectOption(int selectedIndex) {
    setState(() {
      _selectedAnswers[_currentIndex] = selectedIndex;
    });
  }

  void _nextQuestion() {
    if (_currentIndex < widget.questions.length - 1) {
      setState(() {
        _currentIndex++;
      });
    }
  }

  void _previousQuestion() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
      });
    }
  }

  void _submitQuiz() {
    int score = 0;
    for (int i = 0; i < widget.questions.length; i++) {
      if (_selectedAnswers[i] == widget.questions[i].correctAnswerIndex) {
        score++;
      }
    }

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        title: const Text('Quiz Completed!'),
        content: Text('You scored $score out of ${widget.questions.length}.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop(); // Close dialog
              Navigator.of(ctx).pop(); // Go back to FirstPage
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.questions.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text('${widget.languageName} Quiz')),
        body: const Center(child: Text("No questions available.")),
      );
    }

    final currentQuestion = widget.questions[_currentIndex];
    final bool isLastQuestion = _currentIndex == widget.questions.length - 1;
    final bool hasSelectedAnswer = _selectedAnswers.containsKey(_currentIndex);

    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.languageName} Quiz'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Question ${_currentIndex + 1}/${widget.questions.length}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      currentQuestion.questionText,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 30),
                    ...List.generate(currentQuestion.options.length, (index) {
                      final isSelected = _selectedAnswers[_currentIndex] == index;
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: ElevatedButton(
                          onPressed: () => _selectOption(index),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isSelected ? Colors.blue : Colors.white,
                            foregroundColor: isSelected ? Colors.white : Colors.black87,
                            elevation: isSelected ? 4 : 1,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(
                                color: isSelected ? Colors.blue : Colors.grey.shade300,
                              ),
                            ),
                          ),
                          child: Text(
                            currentQuestion.options[index],
                            style: const TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (_currentIndex > 0)
                  ElevatedButton(
                    onPressed: _previousQuestion,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                    ),
                    child: const Text('Back', style: TextStyle(fontSize: 16)),
                  )
                else
                  const SizedBox(), // Spacer for alignment

                ElevatedButton(
                  onPressed: hasSelectedAnswer
                      ? (isLastQuestion ? _submitQuiz : _nextQuestion)
                      : null, // Disabled until an option is selected
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isLastQuestion ? Colors.green : Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  ),
                  child: Text(
                    isLastQuestion ? 'Submit' : 'Next',
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
