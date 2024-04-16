import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: GridScreen(),
  ));
  
  
}


class GridScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Example')),
      body: GridView.count(
      crossAxisCount: 2,
        children: List.generate(8, (index){
            return Center(
            child: Text('Item $index',
            style: Theme
                .of(context)
                .textTheme
                .headline5,
        ),
      );
    }),

    ),
      );
  }
  
}