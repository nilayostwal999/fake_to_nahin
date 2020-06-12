import 'package:flutter/material.dart';
import 'util/drawer.dart' as drew;
import 'screen/homepage.dart' as homepage;
import 'screen/newsview.dart' as newsview;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fake To Nahin',
      theme: ThemeData(
        primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Fake To Nahin'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new drew.Drawer_button(),
      appBar: new AppBar(
        centerTitle: true,
        title: new Expanded(flex:1,child: Row(children:[Text('Fake To Nahin',style:TextStyle(fontWeight:FontWeight.bold,fontSize: 24),textAlign: TextAlign.center,)])),
        actions: [
          RaisedButton(onPressed: (){},
            child: Row(children:[Icon(Icons.add),Text('New Post')]),
            textColor: Colors.white,
            color: Colors.green,
            splashColor: Colors.white,
          )
        ],
      ),
      body: stat(),      ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

class stat extends StatefulWidget {
  @override
  _statState createState() => _statState();
}
class _statState extends State<stat>{
  @override
  Widget build(BuildContext context) {
    return Column(
      verticalDirection: VerticalDirection.down,
      children:[
        newsview.news_view()
      ]
    );
  }
}