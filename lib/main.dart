import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListScreen(),
  ));
}

class ListScreen extends StatelessWidget {
  final List<String> items = List<String>.generate(10, (i) => "Item ${i+1}");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Exmaple')),
      body: ListView.builder(
      itemCount: items.length,
          itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index])
        );
          },
      ),
    );
  }
}
