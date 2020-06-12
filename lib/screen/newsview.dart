import 'package:flutter/material.dart';

class news_view extends StatefulWidget {
  @override
  _news_viewState createState() => _news_viewState();
}

class _news_viewState extends State<news_view> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:10),
        FractionallySizedBox(
          widthFactor: 0.95,
          child:DecoratedBox(
            position: DecorationPosition.background,
            decoration: BoxDecoration(shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(2), border: Border.all(color: Colors.grey, width: 2,style: BorderStyle.values[1])),
            child: Column(
              children:[
                RichText(text: TextSpan(text :'Heading can be too large to fit in a single line. Hence new line should get introduced.',style: TextStyle(fontSize:23,color:Colors.green,fontWeight: FontWeight.bold))),
                FractionallySizedBox(
                  widthFactor: 0.95,
                  child: Image.network('https://www.indoindians.com/wp-content/uploads/2015/12/learning-768x516.jpg',)
                ),
                Text("Description",style: TextStyle(color: Colors.green,fontSize:22,fontWeight: FontWeight.bold)),
                RichText(text: TextSpan(text:'Description provided by posting person',style:TextStyle(fontSize: 20,color: Colors.black))),
                Row(mainAxisAlignment: MainAxisAlignment.end,children:[Text('Name Of Posting Person',style: TextStyle(color:Colors.black,fontSize:18,fontWeight:FontWeight.bold),)])
              ]
            )
          )
        )
      ],crossAxisAlignment: CrossAxisAlignment.stretch
    );
  }
}