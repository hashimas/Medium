import 'package:flutter/material.dart';

class Topics extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new TopicsState();
}

class TopicsState extends State<Topics> {
  static const Color transparent = const Color(0x00000000);
  double screenWidth;
  double cardWidth;

  @override
  Widget build(BuildContext covariant) {
    screenWidth = MediaQuery.of(covariant).size.width;
    cardWidth = screenWidth * 0.60;
    int size = 10;
    return new ListView.builder(itemBuilder: (BuildContext ctx, int index){
      return  createCardItems(index);
    },itemCount: size == null ? 0 : size,);
  }
  Widget createCardItems(int index){
     if(index == 0){
       return createFirstListItem();
     }else{
       return new Container(child: new ListTile(leading: new Container(width:40.0,child: new Image.asset('lib/images/pix.jpg',fit: BoxFit.cover,),decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.all(Radius.circular(2.0)),border: Border.all(style: BorderStyle.solid),),foregroundDecoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.all(Radius.circular(2.0))),) ,
         title: new Text('Art',style: TextStyle(fontSize: 13.0,color: Colors.black,fontWeight: FontWeight.bold),),trailing: Container(width: 80.0,height: 30.0,decoration: BoxDecoration(color: Colors.green,shape: BoxShape.rectangle,borderRadius:BorderRadius.all(Radius.circular(2.0))),padding: EdgeInsets.all(1.0),child: new RaisedButton(onPressed: (){},child: new Text('Follow'),color: Colors.white,textColor: Colors.black,)) ,onTap: (){} ,),);
     }
  }
  Widget createFirstListItem(){
    return new Container(alignment: Alignment.bottomLeft,
      width:cardWidth,
      height: 100.0,
      color:
      Colors.blueGrey[50],
      child: Padding(
        padding: const EdgeInsets.only(left:10.0,bottom: 10.0),
        child: new Text('Arts & Entertainment',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
      ),);
  }
}
