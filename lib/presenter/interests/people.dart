import 'package:flutter/material.dart';

class People extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new PeopleState();
}

class PeopleState extends State<People>{
  @override
  Widget build(BuildContext covariant){
    int size = 10;
    return new ListView.builder(itemBuilder: (BuildContext ctx, int index){
      return new GestureDetector(child: createCardItems() ,onTap: (){},);
    } ,itemCount: size == null ? 0 : size,);
  }

  Widget createCardItems(){
    return new Card(margin: EdgeInsets.only(top: 1.0),
      child: new ListTile(leading: new  CircleAvatar(backgroundImage: new AssetImage('lib/images/pix.jpg',),) ,
      title: new Text('Ben Weber Principal data scientist at Zynga @bgweber',maxLines: 4,style: Theme.of(context).textTheme.body2,),
      trailing: Container(width: 80.0,height: 30.0,decoration: BoxDecoration(color: Colors.green,shape: BoxShape.rectangle,borderRadius:BorderRadius.all(Radius.circular(2.0))),padding: EdgeInsets.all(1.0),child: new RaisedButton(onPressed: (){},child: new Text('Follow'),color: Colors.white,textColor: Colors.black,)) ,),);

  }

}
