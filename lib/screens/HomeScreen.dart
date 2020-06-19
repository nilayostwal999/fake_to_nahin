import 'package:flutter/material.dart';
import '../controllers/drawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerButton(),
      ),
      appBar: AppBar(
        title: Text(
          
          'Fake To Nahin',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
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
        alignment:Alignment.topCenter,
        padding: EdgeInsets.all(5),
        child: StreamBuilder(
          stream: Firestore.instance.collection('post').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return Text('Loading...');
            return ListView.builder(
              itemExtent: 10,
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context,index) => _buildPostCard(context, snapshot.data.documents[index])
            );
          }
        )
      )
    );
  }

  Widget _buildPostCard(BuildContext context, DocumentSnapshot document) {
    return ListTile(
      title: Column(
          children: [
            RichText(text: TextSpan(text: document['title'],style:TextStyle(color: Colors.lightBlue[800],fontSize:26))),
            Row(
              children:[
                Text(document['username'],style:TextStyle(fontWeight: FontWeight.bold, fontSize:22)),
                Text(document['dateCreated'],style:TextStyle(color:Colors.grey,fontSize: 20))
              ]
            ),
            Image(image: NetworkImage(document['imagePath']),fit: BoxFit.fitWidth,),
            RichText(text: TextSpan(text:document['description']),maxLines: 3,overflow: TextOverflow.fade,)
          ],
        )
    );
  }
}

// SizedBox(
//             height: 120,
//             child: RaisedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       fullscreenDialog: true,
//                       maintainState: true,
//                       builder: (context) => NewsView
//                           .news_view()), // builder of MaterialPageRoute will call the TodoDetail class passing the todo that was passed.
//                 );
//               },
//               child: Row(
//                 children: [
//                   SizedBox(
//                       width: 100.0,
//                       child: Column(
//                         children: [
//                           Image.network(
//                             "https://www.indoindians.com/wp-content/uploads/2015/12/learning-768x516.jpg",
//                             height: 120.0,
//                           )
//                         ],
//                       )),
//                   Expanded(
//                       child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Row(children: [
//                         RichText(
//                             text: TextSpan(
//                           text: "heading",
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.w600,
//                               fontSize: 24.0,
//                               decoration: TextDecoration.underline),
//                         ))
//                       ]),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Description:',
//                             style: TextStyle(
//                               fontWeight: FontWeight.w400,
//                               fontSize: 20.0,
//                             ),
//                           ),
//                         ],
//                       ),
//                       Row(children: [
//                         Text(
//                           "description",
//                           style: TextStyle(
//                             color: Colors.grey,
//                             fontWeight: FontWeight.w400,
//                             fontSize: 14.0,
//                           ),
//                           overflow: TextOverflow.fade,
//                         ),
//                       ])
//                     ],
//                   )),
//                   SizedBox(
//                     width: 80,
//                     child: Column(children: [
//                       Text(
//                         'Unique\nLinks\nAvailable:\n',
//                         style: TextStyle(
//                             fontSize: 18.0,
//                             fontWeight: FontWeight.w400,
//                             decoration: TextDecoration.underline),
//                         textAlign: TextAlign.center,
//                       ),
//                       Text(
//                         "links",
//                         style: TextStyle(
//                             fontSize: 24, fontWeight: FontWeight.bold),
//                       )
//                     ]),
//                   )
//                 ],
//               ),
//               color: Colors.white,
//               splashColor: Colors.green,
//               highlightColor: Colors.grey,
//               elevation: 10.0,
//             ))
