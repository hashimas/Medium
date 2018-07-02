import 'package:flutter/material.dart';
import 'package:medium/presenter/home/home_presenter.dart';
import 'package:medium/presenter/bookmarks/bookmarks.dart';
import 'package:medium/presenter/interests/interest.dart';
import 'package:medium/presenter/profile/profile.dart';
class NavigationDrawer extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> new NavigationDrawerState();
}
class NavigationDrawerState extends State<NavigationDrawer>{
  @override
  Widget build(BuildContext context) {

    return new Drawer(child: new ListView(padding: EdgeInsets.only(left: 12.0,top: 48.0),children: <Widget>[
      new DrawerHeader(padding: EdgeInsets.all(0.0),margin: EdgeInsets.all(0.0) ,child: new ListView(children: <Widget>[
        new ListTile(onTap: (){navigateToNewPage('Profiles');},leading: Container(width: 70.0,height: 70.0,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),),child: new  CircleAvatar(backgroundImage: new AssetImage('lib/images/profile.jpg',),)),),
        new ListTile(onTap: (){navigateToNewPage('Profiles');},leading: new Text('Hashim Ismail',style: TextStyle(fontSize: 16.0),),),
        new ListTile(onTap: (){navigateToNewPage('Profiles');},leading: new Text('See profile'),),
      ],),),
      new ListTile(title: new Text('Home',style: new TextStyle(color: Colors.black,fontSize: 16.0,),),onTap: (){navigateToNewPage('Home');},),
      new ListTile(title: new Text('Audio',style: new TextStyle(color: Colors.black,fontSize: 16.0,)),onTap: (){navigateToNewPage('Audio');},),
      new ListTile(title: new Text('Bookmarks',style: new TextStyle(color: Colors.black,fontSize: 16.0,)),onTap: (){navigateToNewPage('Bookmarks');},),
      new ListTile(title: new Text('Interests',style: new TextStyle(color: Colors.black,fontSize: 16.0,)),onTap: (){navigateToNewPage('Interests');},),
      new Divider(height: 1.0,indent: 12.0,color: Colors.grey,),
      new Padding(padding: new EdgeInsets.only(top: 5.0,bottom: 5.0),child:  new ListTile(title: new Text('Become a member',style: new TextStyle(color: Colors.black,fontSize: 16.0),),onTap: (){},),),
      new Divider(height: 1.0,indent: 12.0,color: Colors.grey,),
      new ListTile(title: new Text('New Story',style: new TextStyle(color: Colors.black,fontSize: 16.0),),onTap: (){navigateToNewPage('New Story');},),
      new ListTile(title: new Text('Stats',style: new TextStyle(color: Colors.black,fontSize: 16.0),),onTap: (){navigateToNewPage('Stats');},),
      new ListTile(title: new Text('Drafts',style: new TextStyle(color: Colors.black,fontSize: 16.0),),onTap: (){navigateToNewPage('Draft');},),
      new Padding(padding: const EdgeInsets.only(top: 12.0,bottom: 24.0),
        child: new Row(children: <Widget>[ Padding(padding: const EdgeInsets.only(left: 12.0),
          child: new Icon(Icons.computer,size: 34.0,),),
        new FlatButton(onPressed: (){navigateToNewPage('Settings');}, child: new Text('Settings',style: new TextStyle(fontSize: 12.0),)),
        new FlatButton(onPressed: (){navigateToNewPage('Help');}, child: new Text('Help',style: new TextStyle(fontSize: 12.0),)),
        ],),
      ),
    ],),);
  }

  navigateToNewPage(String page){
    switch(page){
      case 'Profiles':{
        Navigator.of(context).pop();
        Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new Profiles()));
      }break;
      case 'Home':{
        Navigator.of(context).pop();
        Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new MyApp()));
      }break;
      case 'Audio':{

      }break;
      case 'Bookmarks':{
        Navigator.of(context).pop();

        Navigator.push(context, new MaterialPageRoute(builder: (context) => new Bookmark()));

      }break;
      case 'Interests':{
        Navigator.of(context).pop();
        Navigator.push(context, new MaterialPageRoute(builder: (context) => new Interests()));

      }break;
      case 'New Story':{

      }break;
      case 'Stats':{

      }break;
      case 'Draft':{

      }break;
      case 'Settings':{

      }break;
      case 'Help':{

      }break;


    }
  }

}