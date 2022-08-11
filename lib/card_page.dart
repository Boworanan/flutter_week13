import 'package:flutter/material.dart';

class CardPage extends StatelessWidget{
  const CardPage({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Page"),
      ),
      body: Center(
        child: Card(
          child: InkWell(
            splashColor: Colors.blueGrey.withAlpha(30),
            onTap: (){},
            child: SizedBox(
              height: 200,
              width: 200,

              child: Column(
                children: [Icon(Icons.home),Text("TEST")],
              ),
            ),
          ),
        ),

      ),
    );
  }
}