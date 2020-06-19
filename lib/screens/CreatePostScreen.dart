import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePostScreen extends StatefulWidget {
  @override
  _CreatePostScreenState createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Post',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          RaisedButton(
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).primaryColor,
            splashColor: Colors.white54,
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context,'Home', ModalRoute.withName('/'));
            },
            child: Row(
              children: <Widget>[
                Icon(Icons.publish),
                Text("Post", style: TextStyle(fontSize: 20))
              ],
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children:[
            Row(children: [
              Expanded(child: Text('Heading',style:TextStyle(color: Colors.lightBlue[800],fontSize:24)),flex: 2),
              Expanded(flex:4,child: TextField(keyboardType: TextInputType.multiline,maxLines: 3,style: TextStyle(fontSize:20),))
            ]),
            Row(children:[
            ])
          ]
        ),
      )
    );
  }
}