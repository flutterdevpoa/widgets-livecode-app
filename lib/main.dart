import 'package:flutter/material.dart';
import 'package:events/data.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Dev Poa"),
        ),
        body: Home(),
      ),
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8, right: 8, top: 8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Ink(
              height: 50,
              color: Colors.blue,
              child: Row(
                children: [
                  Center(
                      child: Text("FlutterDevPoa #1 - Inauguração!", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white) )),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
            Image.network("https://secure.meetupstatic.com/photos/event/3/4/6/1/600_483433409.jpeg"),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Text(description),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Row(
                children: <Widget>[
                  Icon(Icons.thumb_up, color: Colors.blue,),
                  Text("(0)")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
