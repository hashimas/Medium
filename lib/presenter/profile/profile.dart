import 'package:flutter/material.dart';
import 'package:medium/presenter/home/drawer.dart';
import 'package:medium/presenter/profile/profile_tabs.dart';
class Profiles extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> new ProfileState();
}
class ProfileState extends State<Profiles>{
  double screenWidth;
  double screenHeight;
  double buttonWidth;
  double tabHeight;
  static const  Color transparent = const Color(0x00000000);
  @override
  Widget build(BuildContext ctx){
    screenWidth = MediaQuery.of(ctx).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    tabHeight = screenHeight * 0.50;
    buttonWidth = screenWidth * 0.50;
    return new MaterialApp(home: createScaffold() ,);
  }
  Widget createScaffold(){
    return new Scaffold(appBar: createAppbar(),body: createBody(),drawer: new NavigationDrawer() ,);
  }
  Widget createAppbar(){
    return new AppBar(backgroundColor: Colors.white,leading: new IconButton(icon: Icon(Icons.arrow_back), color: Colors.black,onPressed: (){Navigator.of(context).pop();}),actions: <Widget>[
      new IconButton(icon: Icon(Icons.more_vert),color: Colors.black ,onPressed: (){})
    ],);
  }
  Widget createBody(){
    return new ListView(shrinkWrap: true,children: <Widget>[
      new Container(child: Column(children: <Widget>[
        new Container(child: new CircleAvatar(backgroundImage: AssetImage('lib/images/profile.jpg'),),margin: EdgeInsets.only(top: 20.0,bottom: 20.0),width: 120.0,height: 120.0,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),),
      ],)  ,),
      new Container(alignment: Alignment.topLeft,padding: EdgeInsets.only(left: 20.0,top: 0.0),child: Text('Hashim Ismail',style: TextStyle(fontSize: 30.0,)),),
      new Divider(height: 0.0,color: Colors.blueGrey[100],),
      Container(height: screenHeight,width: buttonWidth,child: new ProfileTab())

    ],);

  }

}