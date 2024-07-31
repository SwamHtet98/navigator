import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {

  late String str;
  Page2(this.str);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(str,style: TextStyle(
            fontSize: 20.0
          ),),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("back")
          )
        ],
      ),
    );
  }
}
