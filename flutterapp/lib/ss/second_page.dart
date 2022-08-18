import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget{
  SecondPage({required this.title});
  final String title;
  @override
  State<StatefulWidget> createState() {
    return SecondState();
  }
}

class SecondState extends State<SecondPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('demo'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10.0),
            height: 44.0,
            color: const Color.fromARGB(255, 255, 0, 0),
            child: FlatButton(
              onPressed: (){
                Navigator.of(context).pop('back');
              },
              child: const Text('pop'),
            ),
          ),
          Text('上个页面传递过来的数据为：${widget.title ?? ''}')
        ],
      ),
    );
  }
}