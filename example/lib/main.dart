import 'package:flutter/material.dart';
import 'package:design2ui/design2ui.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    D2U.init(context);
    D2U.load(D2UDesign.fromSize(widthPx: 1080));
    return Scaffold(
      appBar: AppBar(
        title: Text('Dmo'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 300.0,
              height: 300.0,
              color: Colors.red,
              child: Center(
                child: Text(
                  'width:300.0dp\nheight:300.0dp',
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
            Container(
              width: D2U.d2u(dp: 300.0),
              height: D2U.d2u(dp: 300.0),
              color: Colors.blue,
              child: Center(
                child: Text(
                  'width:${D2U.d2u(dp: 300.0).floor()}dp\nheight:${D2U.d2u(dp: 300.0).floor()}dp',
                  style: TextStyle(
                    fontSize: D2U.d2ut(24.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
