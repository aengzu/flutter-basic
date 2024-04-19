import 'package:flutter/material.dart';


void main() {
  runApp(const MaterialApp(
    home: ImageScreen(),
  ));
  
}


class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Network Image',
      )),
      body: Center(
        child: Image.network(""),

      ),
    );
  }
}

