import 'package:flutter/material.dart';
import 'package:medium/presenter/home/drawer.dart';

class Bookmark extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new BookmarkState();

}
class BookmarkState extends State<Bookmark>{
  var screenWidth;
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: createScaffold(),);
  }

  Widget createScaffold(){
    return new Scaffold(backgroundColor: Colors.blueGrey[50],appBar: createAppbar(),body: createBody() ,drawer: new NavigationDrawer(),);
  }
  Widget createAppbar(){
    return new AppBar(leading: new IconButton(icon: Icon(Icons.menu), onPressed: (){}),title: new Text('Bookmarks',style: TextStyle(color: Colors.white),),backgroundColor: Colors.black,);
  }
  createBody(){
     screenWidth = MediaQuery.of(context).size.width;
    double text_per = screenWidth * 0.60;
    double img_per = screenWidth * 0.30;
    int size = 3;

    return new ListView.builder(itemBuilder: (BuildContext ctx, int index){
      return new GestureDetector(child: getCard(text_per,img_per,0.0,8.0,0.0,0.0,index) ,onTap: (){} ,);
    },itemCount: size == null ? 0 : size,);
  }

  Widget getCard(double txt,double img,double left,double top, double right, double bottom,index){
    if(index == 0){
      return createFirstWidget();
    }else {
      return Card(margin: EdgeInsets.only(left: left,top: top,right: right,bottom: bottom),child: Padding(padding: const EdgeInsets.all(12.0),
        child: new Column(children: <Widget>[Padding(padding: const EdgeInsets.only(bottom: 8.0), child: new Row(children: <Widget>[Padding(padding: const EdgeInsets.only(right: 8.0),
          child: new Text('POLITICS',style: Theme.of(context).textTheme.button,),
        ),new Text('Popular topic',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 12.0),)],),
        ),
        new Row(children: <Widget>[Container(width: txt,child: new Text('Trump Administration dehumanizes victims to justify border atrocities',overflow: TextOverflow.ellipsis,softWrap: false, maxLines: 3,textAlign: TextAlign.left, style: new TextStyle(color: Colors.black,fontSize: 24.0,fontWeight: FontWeight.bold,),)),
        new Container(width: img,child: new  Image.asset('lib/images/pix.jpg' ,height: 80.0,alignment: Alignment.centerRight,),),
        ],),
        new Row(children: <Widget>[new Padding(padding: EdgeInsets.only(top: 12.0),child: new Text('Bill Black',style: Theme.of(context).textTheme.body2,),)],),
        new Row(children: <Widget>[Container(width: txt,child: new Text('Jun 7 . 5 min read',style: Theme.of(context).textTheme.body2,)),Container(width: img,alignment: Alignment.centerRight,child: new IconButton(icon: Icon(Icons.bookmark), color: Colors.green[500],onPressed: (){},),)],)
        ],),
      ),);

    }

  }
  
  Widget createFirstWidget(){
    screenWidth = MediaQuery.of(context).size.width ;
    return new Container(height: 200.0 ,width: screenWidth * 0.90,child: new Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: <Widget>[
      new Padding(padding: EdgeInsets.only(bottom: 12.0),child: Text('Become a Medium member \nto read your saved stories \noffline.',textAlign: TextAlign.center,style: Theme.of(context).textTheme.title,maxLines: 3,),),
      new RaisedButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),padding: EdgeInsets.all(14.0),onPressed: (){},child: Text('Upgrade',style: TextStyle(fontSize: 18.0),),color: Colors.black,textColor: Colors.white,)
    ],),);
  }


}