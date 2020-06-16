import 'package:flutter/material.dart';
import '../util/drawer.dart' as drew;
import 'newsview.dart' as NewsView;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: drew.Drawer_button(),),
      appBar: AppBar(
        title: Text('Fake To Nahin'),
      ),
      body: SizedBox(
        height: 120,
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => NewsView.news_view()), // the builder of MaterialPageRoute will call the TodoDetail class passing the todo that was passed.
            );
          },
          child: Row(
            children: [
              SizedBox(
                  width: 100.0,
                  child: Column(
                    children: [
                      Image.network(
                        "https://www.indoindians.com/wp-content/uploads/2015/12/learning-768x516.jpg",
                        height: 120.0,
                      )
                    ],
                  )),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(children: [
                    Text(
                      "heading",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24.0,
                          decoration: TextDecoration.underline),
                    )
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Description:',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                  Row(children: [
                    Text(
                      "description",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                  ])
                ],
              )),
              SizedBox(
                width: 80,
                child: Column(children: [
                  Text(
                    'Unique\nLinks\nAvailable:\n',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "links",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ]),
              )
            ],
          ),
          color: Colors.white,
          splashColor: Colors.green,
          highlightColor: Colors.grey,
          elevation: 10.0,
        )
      ),
    );
  }
}
