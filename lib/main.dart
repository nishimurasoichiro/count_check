import 'dart:core';
import 'package:flutter/material.dart';
import 'list_view.dart';
import 'list.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

   //List<int>  list_1 = <int>[];


  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

 void value_move1 (){
   setState(() {
     list_1.add(_counter);
     _counter = 0;
   });
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("カウントチェックアプリ"),
      ),
      body: Column(
        children: [
          const Center(
            child:
            SizedBox(height: 50),
          ),

          const Center(
            child: SizedBox(height: 50,),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "カウント",
                  style: TextStyle(
                    color:Colors.white,
                  ),
                ),
                Text(
                  '$_counter',
                  style: const TextStyle(
                    fontSize: 100,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: _incrementCounter,
              //tooltip: 'Increment',
              child: const Icon(Icons.add),),
          ),

          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          Center(
            child: ElevatedButton(
              onPressed: value_move1,
              //tooltip: 'Increment',
              child: const Icon(Icons.file_download),),
          ),
          Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>List_View()),
                );
              },
              //tooltip: 'Increment',
              child: const Icon(Icons.file_copy),),
          ),
    ]),
        ],
      ),
    );
  }
}
