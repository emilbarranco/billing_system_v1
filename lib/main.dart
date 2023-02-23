import 'package:flutter/material.dart';

void main() {
  runApp(const Core());
}

class Core extends StatelessWidget {
  const Core({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Placeholder(),
    );
  }
}
