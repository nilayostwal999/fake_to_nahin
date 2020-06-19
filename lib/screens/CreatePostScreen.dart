import 'package:flutter/material.dart';

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
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Icon(Icons.publish),
                  Text("Post", style: TextStyle(fontSize: 20))
                ],
              ),
            )
          ],
        ),
        body: Center(
            //   child:
            //       _image == null ? Text('No image selected.') : Image.file(_image),
            // ),
            // floatingActionButton: FloatingActionButton(
            //   onPressed: getImage,
            //   tooltip: 'Pick Image',
            //   child: Icon(Icons.add_a_photo),
            )
        // ,Container(
        //   padding: EdgeInsets.all(15),
        //   child: ListView(
        //     scrollDirection: Axis.vertical,
        //     children: <Widget>[

        //     ],
        //   ),
        // )
        );
  }
}
