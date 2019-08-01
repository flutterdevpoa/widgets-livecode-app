import 'package:flutter/material.dart';
import 'package:events/data.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Dev Poa"),
        ),
        body: HomeScreen(),
      ),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  var likeCount = 0;

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
                      child: Text("FlutterDevPoa #1 - Inauguração!",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
            Image.network("https://secure.meetupstatic.com/photos/event/3/4/6/1/600_483433409.jpeg"),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(description, style: TextStyle(fontSize: 18)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      likeCount++;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(32),
                    child: Icon(Icons.thumb_up, color: Colors.blue),
                  ),
                ),
                Text('($likeCount)', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      likeCount--;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(32),
                    child: Icon(Icons.thumb_down, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
