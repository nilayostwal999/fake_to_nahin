import 'package:flutter/material.dart';

class Drawer_button extends StatefulWidget {
  @override
  _Drawer_buttonState createState() => _Drawer_buttonState();
  
}

class _Drawer_buttonState extends State<Drawer_button> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        addRepaintBoundaries: true,
        padding: EdgeInsets.zero,
        children:[
          DrawerHeader(child:Text('Fake To Nahin',style:TextStyle(fontWeight: FontWeight.bold,fontSize:24,color: Colors.white)),decoration: BoxDecoration(color: Colors.green),),
          ListTile(title: Text('Home',style:TextStyle(color: Colors.green,fontSize: 20))),
          ListTile(title: Text('Profile',style:TextStyle(color: Colors.green,fontSize: 20))),
          ListTile(title: Text('Settings',style:TextStyle(color: Colors.green,fontSize: 20))),
          ListTile(title: Text('Exit',style:TextStyle(color: Colors.green,fontSize: 20)))
        ]
      ),
    );
  }
}