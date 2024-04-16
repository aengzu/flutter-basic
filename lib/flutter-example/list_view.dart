
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListScreen(),
  ));
}

// List.generate 를 사용하여 리스트 생성가능.
class ListScreen extends StatelessWidget {
  final List<String> items = List<String>.generate(100, (i) => "Item ${i+1}");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('ListView Exmaple')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            // ListTile 은 패딩이 있는 표준 Material 타일로, 선택적으로 앞뒤 위젯 가짐
              title: Text(items[index])
          );
        },
      ),
    );
  }
}
