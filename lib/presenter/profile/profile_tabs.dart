import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new ProfileTabState();
}
class ProfileTabState extends State<ProfileTab>{
  double screenWidth;
  static const Color transparent = const Color(0x00000000);
  double buttonWidth;
  @override
  Widget build(BuildContext covariant){
    screenWidth = MediaQuery.of(covariant).size.width;
    buttonWidth = screenWidth * 0.45;
    return new MaterialApp(debugShowCheckedModeBanner: false,home: createTabController(),);
  }
  Widget createTabController(){
    return new DefaultTabController(length: 2, child: new Scaffold(appBar: AppBar(backgroundColor: Colors.white,title:createTabs() ,bottom: new TabBar(tabs: <Widget>[
      new Tab(child: Text('Profile',style: TextStyle(color: Colors.black,)),),
      new Tab(child: Text('Claps',style: TextStyle(color: Colors.black),),),
    ],),),body: createTabView()  ,));
  }
  Widget createTabView(){
    return new TabBarView(children: <Widget>[
      new Center(child: Text('Profile'),),
      new Center(child: Text('Claps'),),
    ],);
  }

  Widget createTabs(){
    return new Row(children: <Widget>[
      Container(decoration: BoxDecoration(border: Border(right: new BorderSide(color: Colors.black))),height: 50.0,width: buttonWidth,child: new FlatButton(padding: EdgeInsets.all(0.0),onPressed: (){},child: Row(
        children: <Widget>[
          Padding(padding: const EdgeInsets.only(left: 12.0,right: 4.0), child: Text('3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,)),),
          Text('Following',style: Theme.of(context).textTheme.button,),
        ],
      ))),
      Container(height: 50.0,width: buttonWidth,child: new FlatButton(onPressed: (){}, child: Row(
        children: <Widget>[
          Padding(padding: const EdgeInsets.only(left: 12.0,right: 4.0), child: Text('0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,)),),
          Text('Followers',style: Theme.of(context).textTheme.button,),
        ],
      ))),
    ],);
  }
}