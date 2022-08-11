import 'package:flutter/material.dart';

class ColPage extends StatelessWidget{
  const ColPage({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Column Wiget"),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("C-1",style: TextStyle(fontSize: 25),),
              Text("C-2",style: TextStyle(fontSize: 25),),
              Text("C-3",style: TextStyle(fontSize: 25),),
              Text("C-4",style: TextStyle(fontSize: 25),),],
          ),
        ),
      ),
    );
  }
}