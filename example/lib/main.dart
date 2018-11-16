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
    D2U.load(D2UDesign(2.0, 540.0));
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 378.0,
              height: 378.0,
              color: Colors.red,
              child: Center(
                child: Text(
                  'width:378.0dp\nheight:378.0dp',
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
            Container(
              width: D2U.d2u(px: 378*2),
              height: D2U.d2u(px: 378*2),
              color: Colors.blue,
              child: Center(
                child: Text(
                  'width:${D2U.d2u(px: 378*2).floor()}dp\n'
                      'height:${D2U.d2u(px: 378*2).floor()}dp\n'
                      'density:${D2U.defaultDensity * D2U.pixelRatio}\n'
                      'screen width:${D2U.screenWidth * D2U.pixelRatio}px\n'
                      'screen height:${D2U.screenHeight * D2U.pixelRatio}px',
                  style: TextStyle(
                    fontSize: D2U.d2ut(18.0),
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
