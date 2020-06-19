import 'package:flutter/material.dart';
import 'package:fake_to_nahin/models/PostModel.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  String title;
  String dateCreated;
  String username;
  String imagePath;
  String description;
  @override
  Widget build(BuildContext context) {
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
                              text: this.title,
                              style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.lightBlue[800],
                                  fontWeight: FontWeight.bold))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(this.username,
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          Text(this.dateCreated,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey))
                        ],
                      ),
                      FractionallySizedBox(
                          widthFactor: 0.95,
                          child: Image.network(
                            this.imagePath,
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
                              text: this.description,
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black))),
                      Text('Read More and View Resources',
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline))
                    ]))))); 
  }
}