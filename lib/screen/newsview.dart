import 'package:flutter/material.dart';

class news_view extends StatefulWidget {
  @override
  _news_viewState createState() => _news_viewState();
}

class _news_viewState extends State<news_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Fake To Nahin')),
      body:Column(
        children: [
          SizedBox(height:10),
          FractionallySizedBox(
            widthFactor: 0.95,
            child:DecoratedBox(
              position: DecorationPosition.background,
              decoration: BoxDecoration(shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(2), border: Border.all(color: Colors.grey, width: 2,style: BorderStyle.values[1])),
              child: Padding(
                padding: EdgeInsets.all(10),
                child:Column(
                  children:[
                    RichText(text: TextSpan(text :'Heading can be too large to fit in a single line. Hence new line should get introduced.',style: TextStyle(fontSize:26,color:Colors.green,fontWeight: FontWeight.bold))),
                    FractionallySizedBox(
                      widthFactor: 0.95,
                      child: Image.network('https://www.indoindians.com/wp-content/uploads/2015/12/learning-768x516.jpg',)
                    ),
                    Text("Description\n",style: TextStyle(color: Colors.black,fontSize:23,fontWeight: FontWeight.bold)),
                    RichText(text: TextSpan(text:'Description provided by posting person may be very long but would get displayed here',style:TextStyle(fontSize: 20,color: Colors.black))),
                    Row(mainAxisAlignment: MainAxisAlignment.end,children:[Text('Name Of Posting Person',style: TextStyle(color:Colors.black,fontSize:20,fontWeight:FontWeight.bold),)])
                  ]
                )
              )
            )
          ),
          FractionallySizedBox(
            widthFactor: 0.95,
            child: DecoratedBox(
              position: DecorationPosition.background,
              decoration: BoxDecoration(shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(2), border: Border.all(color: Colors.grey, width: 2,style: BorderStyle.values[1])),
              child:Padding(
                padding:EdgeInsets.all(10),
                child: Column(
                  children:[
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                      Text('Links Posted:',style:TextStyle(fontSize: 24,fontWeight:FontWeight.bold)),
                      RaisedButton(onPressed: (){},child:Text('Post a Link',style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),))],
                    ),
                    FractionallySizedBox(
                        widthFactor:0.97,
                        child: Row(
                          children:[
                            Row(
                              children: [
                                Column(children: [
                                  Image(image: Image.asset(app.png))
                                ],),
                                Column(),
                              ],
                            ),
                            Row(children: [Text('Link Provided By User')],)
                          ]
                        ),
                      )
                  ]
                ),
              )
            )
          )
        ],crossAxisAlignment: CrossAxisAlignment.stretch
      )
    );
  }
}