import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: CustomFontScreen(),
  ));
}

class CustomFontScreen extends StatelessWidget {
  const CustomFontScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Font Exmaple'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children : [ Text(
          textAlign: TextAlign.center,
          'This is a custom font !',
          style: TextStyle(fontFamily: 'IBMPlexSans', fontSize: 24),
        ),
          Text(
            textAlign: TextAlign.center,
            'This is a custom font !',
            style: TextStyle(fontFamily: 'Micro5Charted', fontSize: 24),
          ),

      ],)


    );
  }
}
