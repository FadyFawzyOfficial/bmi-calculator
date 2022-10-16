import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(home: InputScreen());
}

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  InputScreenState createState() => InputScreenState();
}

class InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI CALCULATOR')),
      body: const Center(child: Text('Body Text')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
