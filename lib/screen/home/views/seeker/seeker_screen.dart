import 'package:flutter/material.dart';

class SeekerScreen extends StatelessWidget {
  const SeekerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seeker'),
      ),
      body: Container(
        color: Colors.green,
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Seeker page')],
          ),
        ),
      ),
    );
  }
}
