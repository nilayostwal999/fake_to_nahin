import 'package:fake_to_nahin/widgets/Cards.dart';
import 'package:flutter/material.dart';
import '../controllers/drawer.dart';

class SavedPostsScreen extends StatefulWidget {
  @override
  _SavedPostsScreenState createState() => _SavedPostsScreenState();
}

class _SavedPostsScreenState extends State<SavedPostsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerButton(),
      appBar: AppBar(
        title:Text('Fake To Nahin',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold)),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: ListView.builder(
          itemBuilder: _buildFruitItem,
          itemCount: 5,
        )
      )
    );
  }

  Widget _buildFruitItem(BuildContext context, int index) {
    return Cards();
  }
}