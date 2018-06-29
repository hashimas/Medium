import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medium/presenter/home/read_presenter.dart';
import 'package:medium/presenter/home/drawer.dart';


void main()=> runApp(new MaterialApp(home: new MyApp(),));
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new Home();
}

class Home extends State<MyApp> {
  //static const Color transparent = const Color(0x00000000);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: createScaffold(),);
  }
  Scaffold createScaffold(){
    return new Scaffold(backgroundColor: Colors.blueGrey[50],appBar: new AppBar(backgroundColor: Colors.black,leading: new IconButton(icon: Icon(Icons.menu), onPressed: (){}) ,title: new Text('Home') ,actions: <Widget>[
      new IconButton(icon: new Icon(FontAwesomeIcons.bell,size: 18.0 ,), onPressed: (){}),
      new IconButton(icon: Icon(Icons.search), onPressed: (){})
    ],) ,body: createBody() ,drawer: new NavigationDrawer(),);
  }


  Widget createBody(){
    double width = MediaQuery.of(context).size.width;
    double text_per = width * 0.60;
    double img_per = width * 0.30;
    //double first_text_per = width * 0.50;
    //double first_img_per = width * 0.30;
    int size = 10;
    return new ListView.builder(itemCount: size == null ? 0 : size,
      itemBuilder: (BuildContext context, int index) {
        // getCard(first_text_per,first_img_per,20.0,20.0,20.0,12.0),
        return new GestureDetector(child: getCard(text_per,img_per,0.0,8.0,0.0,0.0)  ,
          onTap: (){Navigator.push(context, new MaterialPageRoute(builder: (context) =>new Read() ));}  ,);
      },
    );
  }

  Widget getCard(double txt,double img,double left,double top, double right, double bottom){
    return Card(margin: EdgeInsets.only(left: left,top: top,right: right,bottom: bottom),child: Padding(padding: const EdgeInsets.all(12.0),
      child: new Column(children: <Widget>[Padding(padding: const EdgeInsets.only(bottom: 8.0), child: new Row(children: <Widget>[Padding(padding: const EdgeInsets.only(right: 8.0),
        child: new Text('POLITICS',style: Theme.of(context).textTheme.button,),
      ),new Text('Popular topic',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 12.0),)],),
      ),
      new Row(children: <Widget>[Container(width: txt,child: new Text('Trump Administration dehumanizes victims to justify border atrocities',overflow: TextOverflow.ellipsis,softWrap: false, maxLines: 3,textAlign: TextAlign.left, style: new TextStyle(color: Colors.black,fontSize: 24.0,fontWeight: FontWeight.bold,),)),
      new Container(width: img,child: new  Image.asset('lib/images/pix.jpg' ,height: 80.0,alignment: Alignment.centerRight,),),
      ],),
      new Row(children: <Widget>[new Padding(padding: EdgeInsets.only(top: 12.0),child: new Text('Bill Black',style: Theme.of(context).textTheme.body2,),)],),
      new Row(children: <Widget>[Container(width: txt,child: new Text('Jun 7 . 5 min read',style: Theme.of(context).textTheme.body2,)),Container(width: img,alignment: Alignment.centerRight,child: new IconButton(icon: Icon(Icons.bookmark_border),onPressed: (){},))],)
      ],),
    ),);
  }
}
