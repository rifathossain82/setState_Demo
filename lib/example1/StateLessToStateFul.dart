import 'package:flutter/material.dart';


class FulDemo extends StatefulWidget{
  @override
  _FulDemo createState()=>_FulDemo();
}

class _FulDemo extends State<FulDemo>{

  String title='My favorite fruit is ';
  String fruit='Unknown';

  callBack(_fruit){
    setState(() {
      fruit=_fruit;
    });
  }

  @override
  Widget build(BuildContext contex){
    return Scaffold(
      appBar:AppBar(
        title: Text(title+fruit),
      ),
      body: Center(
        child: Column(
          children:[
            SizedBox(height: 20 ),
            LessDemo(fruit: 'Apple',callback: callBack,),
            SizedBox(height: 20,),
            LessDemo(fruit: 'Orange',callback: callBack,),
            SizedBox(height: 20 ),
            LessDemo(fruit: 'Banana',callback: callBack,),
          ]
        ),
      ),
    );
  }
}


class LessDemo extends StatelessWidget{

  String fruit;
  Function callback;
  LessDemo({required this.fruit, required this.callback});

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      child: Text(fruit),
      onPressed: (){
        callback(fruit);
      }
    );
  }
}
