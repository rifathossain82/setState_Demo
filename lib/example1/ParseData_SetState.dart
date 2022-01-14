
import 'package:flutter/material.dart';


class ParseData_SetState extends StatefulWidget{
  @override
  _ParseData_SetState createState()=>_ParseData_SetState();
}

class _ParseData_SetState extends State<ParseData_SetState>{

  String title='My favorite fruit is ';
  String fruit='Unknown';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(title+fruit),
      ),
      body: Center(
          child: Column(
              children:[
                SizedBox(height: 20),
                ElevatedButton(
                    child: Text('Apple'),
                    onPressed: (){
                      setState((){
                        fruit='Apple';
                      });
                    }
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    child: Text('Orange'),
                    onPressed: (){
                      setState((){
                        fruit='Orage';
                      });
                    }
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    child: Text('Banana'),
                    onPressed: (){
                      setState((){
                        fruit='Banana';
                      });
                    }
                )
              ]
          )
      ),
    );
  }

}