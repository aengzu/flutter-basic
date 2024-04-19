import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: TextFieldScreen(),
  ));
}

// alt + enter 단축키
// Stateful
class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  final TextEditingController _controller = TextEditingController();


  // ctrl + o : override 단축키
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();

  }

  void _showValue() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(_controller.text),
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Text Field Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
          TextField(
          controller: _controller,
          decoration: const InputDecoration(labelText: 'Enter something'),
        ),
        ElevatedButton(onPressed: _showValue, child: Text('Show Value')
        ),
          ],
        ),
      ),
    );

  }

}

