import 'package:flutter/material.dart';

class DrawerButton extends StatefulWidget {
  @override
  _DrawerButtonState createState() => _DrawerButtonState();
  
}

class _DrawerButtonState extends State<DrawerButton> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        addRepaintBoundaries: true,
        padding: EdgeInsets.zero,
        children:[
          DrawerHeader(child:Text('Fake To Nahin',style:TextStyle(fontWeight: FontWeight.bold,fontSize:24,color: Colors.white)),decoration: BoxDecoration(color: Colors.green),),
          ListTile(title: Text('Home',style:TextStyle(color: Colors.green,fontSize: 20)),onTap: (){Navigator.pushNamedAndRemoveUntil(context,'Home',ModalRoute.withName('/'));},),
          ListTile(title: Text('Profile',style:TextStyle(color: Colors.green,fontSize: 20)),onTap: (){Navigator.pushNamed(context,'Profile');},),
          ListTile(title: Text('Settings',style:TextStyle(color: Colors.green,fontSize: 20))),
          ListTile(title: Text('Exit',style:TextStyle(color: Colors.green,fontSize: 20)))
        ]
      ),
    );
  }
}