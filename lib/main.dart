import 'dart:ui';

import 'package:flutter/material.dart';
void main(){
  runApp( faketonahin() );
}

class faketonahin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fake To Nahin",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Expanded(flex: 1,child:
              Column(children: [
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.menu, color: Colors.white,),
                ),
              ],),),
              Expanded(flex: 5,child:
              Column(children: [
                Title(color: Colors.white, child: Text("Fake To Nahin", style: TextStyle(fontWeight: FontWeight.w800),))
              ],crossAxisAlignment: CrossAxisAlignment.end,),),
              Expanded(flex: 3,child:
              Column(children: [
                RaisedButton(
                  onPressed: (){},
                  child: Row(
                    children:[
                      Icon(Icons.add, color: Colors.white,),
                      Text("New Post", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white))
                    ],mainAxisAlignment: MainAxisAlignment.end,mainAxisSize: MainAxisSize.min,
                  ),
                  color: Colors.green, elevation: 10.0,
                ),
              ],crossAxisAlignment: CrossAxisAlignment.end,),),
            ],mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        body: Column(
          children:[
            buildSizedBox()
          ]
        )
        
      ),
    );
  }

  SizedBox buildSizedBox() {
    return SizedBox(
        
        height: 120,
        child: RaisedButton(
          onPressed: (){},
          child: Row(
            children: [
              SizedBox(
                width:100.0,
                child:Column(
                  children: [
                    Image.network("https://www.indoindians.com/wp-content/uploads/2015/12/learning-768x516.jpg", height: 120.0,)
                  ],
                ) 
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(children: [
                      Text('Heading', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24.0,decoration: TextDecoration.underline),)
                    ]),
                    
                    Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                        Text('Description:', style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20.0,),),
                    ],),
                    Row(children: [
                      Text('Description Provided', style: TextStyle(color:Colors.grey,fontWeight: FontWeight.w400,fontSize: 14.0,),overflow: TextOverflow.fade,),
                    ]) 
                    
                    ],)
                ),
              SizedBox(
                width: 80,
                child: Column(
                  children:[
                    Text('Unique\nLinks\nAvailable:',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w400,decoration: TextDecoration.underline),textAlign: TextAlign.center,),
                  ]
                ),
              )
            ],
          ),
          color: Colors.white,splashColor: Colors.green,highlightColor: Colors.grey,elevation: 10.0,
        )
      );
  }
}