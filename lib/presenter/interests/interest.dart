import 'package:flutter/material.dart';
import 'package:medium/presenter/home/drawer.dart';
import 'package:medium/presenter/interests/topic.dart';
import 'package:medium/presenter/interests/people.dart';
import 'package:medium/presenter/interests/publication.dart';

class Interests extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new InterestsState();

}
class InterestsState extends State<Interests>{
  @override
  Widget build(BuildContext covariant){

    return new MaterialApp(home: createTabs() ,);
  }

  Widget createAppbar(){
    return new AppBar(bottom: new TabBar(tabs: <Widget>[
      new Tab(text: 'Topic',),
      new Tab(text: 'People',),
      new Tab(text: 'Publication',),
    ],),leading: new IconButton(icon: Icon(Icons.menu),
        onPressed: (){}) ,title: new Text('Interests',
      style: TextStyle(color: Colors.white),) ,
      backgroundColor: Colors.black,);
  }
  Widget createBody(){
    return new Center(child: new Text('Hello Flutter',
      style: TextStyle(fontSize: 48.0),),);
  }
  Widget createTabs(){
     return new DefaultTabController(
         length: 3,
         initialIndex: 0,
         child: new Scaffold(appBar: createAppbar() ,
           body: new TabBarView(children: <Widget>[
           new Topics(),
           new People(),
           new Publication(),

         ],),drawer: new NavigationDrawer(), ));
  }
}