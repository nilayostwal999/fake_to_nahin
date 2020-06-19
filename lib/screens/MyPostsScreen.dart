import 'package:fake_to_nahin/widgets/Cards.dart';
import 'package:flutter/material.dart';
import '../controllers/drawer.dart';

class MyPostsScreen extends StatefulWidget {
  @override
  _MyPostsScreenState createState() => _MyPostsScreenState();
}

class _MyPostsScreenState extends State<MyPostsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerButton(),
      appBar: AppBar(
        title:Text('Fake To Nahin',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold)),
        actions: [
          // New Post Button
          RaisedButton(
              splashColor: Colors.white54,
              color: Colors.lightBlue[800],
              onPressed: () {
                Navigator.pushNamed(context, "CreatePost");
              },
              child: Row(children: [
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.white,
                ),
                Text(
                  'New Post',
                  style: TextStyle(color: Colors.white,fontSize: 20),
                )
              ]),
            )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: ListView.builder(
          itemBuilder: _buildFruitItem,
          itemCount: 1,
        )
      )
    );
  }

  Widget _buildFruitItem(BuildContext context, int index) {
    return Cards();
  }
}