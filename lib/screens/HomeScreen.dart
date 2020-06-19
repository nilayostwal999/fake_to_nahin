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
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context,index) => _buildPostCard(context, snapshot.data.documents[index])
            );
          }
        )
      )
    );
  }

  Widget _buildPostCard(BuildContext context, DocumentSnapshot document) {
    return Card(
        child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'Post');
            },
            child: DecoratedBox(
                position: DecorationPosition.background,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(
                        color: Colors.grey,
                        width: 2,
                        style: BorderStyle.values[1])),
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(children: [
                      RichText(
                          text: TextSpan(
                              text: document['title'],
                              style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.lightBlue[800],
                                  fontWeight: FontWeight.bold))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text( document['username'],
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          Text(document['dateCreated'],
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey))
                        ],
                      ),
                      FractionallySizedBox(
                          widthFactor: 0.95,
                          child: Image.network(
                            document['imagePath'],fit: BoxFit.fitWidth,
                          )),
                      Text("Description\n",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.bold)),
                      RichText(
                          overflow: TextOverflow.fade,
                          maxLines: 3,
                          text: TextSpan(
                              text: document['description'],
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black))),
                      Text('Read More and View Resources',
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline))
                    ])))));
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
