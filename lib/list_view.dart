import 'package:count_check/list.dart';
import 'package:flutter/material.dart';
import 'list.dart';
// ignore: camel_case_types
class List_View extends StatefulWidget {
  const List_View({Key? key}) : super(key: key);

  @override
  State<List_View> createState() => _List_ViewsState();
}

// ignore: camel_case_types
class _List_ViewsState extends State<List_View> {

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("カウントチェックアプリ"),
      ),
      body: Column(
        children:   [
          const Center(
            child: Text("カウントリスト",
            style: TextStyle(
              fontSize: 50,
            ),),
          ),
          Container(
            height: 500,
            width: 300,
            padding: EdgeInsets.all(4),
              child: ListView.separated(
                  //itemExtent: 80,
                  itemCount: list_1.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      color: Colors.black,
                      child: Center(
                          child: Text('${list_1[index]}',
                            style: TextStyle(
                                color: Colors.white,
                              fontSize: 50,
                            ),
                          )),
                    );
                  }, separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
              ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: (){
                setState(() {
                  list_1.clear();
              });
              },
              //tooltip: 'Increment',
              child: const Icon(Icons.remove),),
          ),
        ],
      ),
    );
  }
}
