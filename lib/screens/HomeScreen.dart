import 'package:flutter/material.dart';
import '../controllers/drawer.dart' as drew;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: drew.DrawerButton(),
      ),
      appBar: AppBar(
        title: Text(
          'Fake To Nahin',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          // New Post Button
          RaisedButton(
            splashColor: Colors.green[300],
            color: Colors.green,
            onPressed: () {},
            child: Row(children: [
              Icon(
                Icons.add_circle_outline,
                color: Colors.white,
              ),
              Text(
                'New Post',
                style: TextStyle(color: Colors.white),
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
    return Card(
      child:InkWell(
        onTap: (){
          Navigator.pushNamed(context,'Post');
        },
        child: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(2),
            border: Border.all(
              color: Colors.grey,
              width: 2,
              style: BorderStyle.values[1]
            )
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              RichText(
                text: TextSpan(
                  text:'Heading can be too large to fit in a single line. Hence new line should get introduced.',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.green,
                    fontWeight: FontWeight.bold
                  )
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Username of Poster',style:TextStyle(fontSize: 20,fontWeight:FontWeight.bold)),
                  Text('Date of Posting',style:TextStyle(fontSize: 20,color: Colors.grey))
                ],
              ),
              FractionallySizedBox(
                  widthFactor: 0.95,
                  child: Image.network(
                    'https://www.indoindians.com/wp-content/uploads/2015/12/learning-768x516.jpg',
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
                  text:'Description provided by posting person may be very long but would get displayed here uptil three lines and would fade after that',
                  style: TextStyle(fontSize: 20, color: Colors.black,backgroundColor: Colors.grey)
                )
              ),
              Text('Read More and View Resources',style:TextStyle(color: Colors.blue,decoration:TextDecoration.underline))
            ])
          )
        )
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
