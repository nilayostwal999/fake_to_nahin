import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(profile_view());
}

class profile_view extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fake To Nahin',
      theme: ThemeData(primarySwatch: Colors.green),
      home:Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Expanded(
                flex: 2,
                child: Row(children:[
                  IconButton(
                    onPressed:(){},
                    icon: Icon(Icons.menu),
                  )]
                )
              ),
              Expanded(
                flex:4,
                child: Text("Fake To Nahin", style: TextStyle(fontWeight: FontWeight.w800),textAlign: TextAlign.center,)
              ),
              Expanded(
                flex: 2,
                child:  RaisedButton(
                  onPressed:(){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.edit,color: Colors.white,),
                      Text('Edit',textAlign: TextAlign.end,style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  color: Colors.green,elevation: 10.0,
                ),
              )
            ]
          ),
        ),
        body: Column(
          children:[
            Row(children:[Image.network('https://www.indoindians.com/wp-content/uploads/2015/12/learning-768x516.jpg',width: 240,)],mainAxisAlignment: MainAxisAlignment.center,),
            Row(children:[Text('Name :' , style:TextStyle(fontSize: 28,fontWeight: FontWeight.bold))]),
            Row(children:[Text('Name variable here line52' , style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold))]),
            Row(children:[Text('City :' , style:TextStyle(fontSize: 28,fontWeight: FontWeight.bold))]),
            Row(children:[Text('City variable here line54' , style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold))]),
            Row(children:[Text('E-mail ID :' , style:TextStyle(fontSize: 28,fontWeight: FontWeight.bold))]),
            Row(children:[Text('E-mail ID variable here line56' , style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold))]),
            Row(children:[Text('Mobile :' , style:TextStyle(fontSize: 28,fontWeight: FontWeight.bold))]),
            Row(children:[Text('Mobile variable here line58' , style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold))]),
          ],
        ),
      ),
    );
  }
}