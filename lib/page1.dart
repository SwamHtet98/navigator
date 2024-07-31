import 'package:flutter/material.dart';
import 'package:navigator_tuto/page2.dart';

class Page1 extends StatelessWidget {
  var tController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Page1"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextField(
              controller: tController,
              decoration: InputDecoration(
                labelText: "Enter Something"
              ),
            ),
            OutlinedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) { 
                return Page2(tController.text); 
               }));
            }, 
            child: Text("Send")),
          ],
        ),
      ),
    );
  }
}
