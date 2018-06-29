import 'package:flutter/material.dart';

class Read extends StatefulWidget {
  int cardIndex;
  int userId;
  //Read(this.cardIndex,this.userId);
  @override
  State<StatefulWidget> createState() => new ReadPage();
}

class ReadPage extends State<Read> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: createScaffold() ,);
  }
  
  Widget createScaffold(){
    return new Scaffold(appBar: createAppbar() ,body: new Center(child: new Text('Hello'),),);
  }
  Widget createAppbar(){
      return new AppBar(backgroundColor: Colors.white,iconTheme: IconThemeData.fallback(),
        leading: new IconButton(icon: new CircleAvatar(backgroundImage: AssetImage('lib/images/pix.jpg'),), onPressed: null),
        title: new Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment:MainAxisAlignment.center ,children: <Widget>[
          new Text('umar haque',style: TextStyle(fontSize: 12.0,color: Colors.black)),
          new Text('Jun 7 . 5 min read',style: TextStyle(fontSize: 12.0,color: Colors.black))],),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.brightness_low), onPressed: (){}),
          new IconButton(icon: new Icon(Icons.bookmark_border), onPressed: (){}),
          new IconButton(icon: new Icon(Icons.more_vert), onPressed: (){})
      ],);
  }

}


