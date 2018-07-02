import 'package:flutter/material.dart';

class Publication extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new PublicationState();
}

class PublicationState extends State<Publication>{
  double screenWidth;
  @override
  Widget build(BuildContext covariant){
    screenWidth = MediaQuery.of(covariant).size.width;

    int size = 12;
    return new ListView.builder(itemBuilder: (BuildContext ctx, int index){
      return new GestureDetector(child: createCardItems(index) ,onTap: (){},);
    } ,itemCount: size == null ? 0 : size,);
  }

  Widget createCardItems(int index){
    if(index == 0){
      return createFirstItem();
    }else if(index == 1) {
      return  createSecondItem('New and notable');
    }else if(index == 2){
      return createCardMainItems('The Mission We publish stories, videos, and podcasts to');
    }else if(index == 3){
      return createCardMainItems('Better Humans Better Humans is a collection of world\'s most');
    }
    else if(index == 4){
      return createSecondItem('Picked for you');
    }else if(index == 5){
      return createCardMainItems('The Blueprint Bluzelle is a decentralized, on demand, scalable');
    }else if(index == 6){
      return createCardMainItems('SoloLearn Find and share anything coding');
    }
    else if(index == 7){
      return createCardMainItems('TimeScale TimescaleDB is the only open-source time-series database');
    }
    else if(index == 8){
      return createSecondItem('The Programming Guide');
    }
    else if(index == 9){
      return createCardMainItems('freeCodeCamp Our Community publishes stories worth reading of');

    }
    else if (index == 10){
      return createCardMainItems('Hacker Noon how hackers start their afternoons');

    }
    else if (index == 11){
      return createCardMainItems('Pointer IO Pointer is a reading club for developers. it\'s a window');

    }


  }

  Widget createCardMainItems(var text){
    return new Card(margin: EdgeInsets.only(top: 1.0),
      child: new ListTile(contentPadding: EdgeInsets.all(20.0),
        leading: Container(width: 60.0,height: 60.0,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),),child: new  CircleAvatar(backgroundImage: new AssetImage('lib/images/pix.jpg',),)) ,
        title: new Text(text,maxLines: 4,style: TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold),),
        trailing: Container(width: 80.0,height: 30.0,decoration: BoxDecoration(color: Colors.green,shape: BoxShape.rectangle,borderRadius:BorderRadius.all(Radius.circular(2.0))),padding: EdgeInsets.all(1.0),child: new RaisedButton(onPressed: (){},child: new Text('Follow'),color: Colors.white,textColor: Colors.black,)) ,),);
  }

  Widget createFirstItem(){
    return new Row(children: <Widget>[
      Container(color: Colors.white,height: 70.0,width: screenWidth,padding: EdgeInsets.all(20.0),child: new Text('See all publications you follow',textAlign: TextAlign.left,style: Theme.of(context).textTheme.title,))
    ],crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.end,);
  }
  Widget createSecondItem(var text){
    return new Row(children: <Widget>[
      Container(color: Colors.blueGrey[50],height: 40.0,width: screenWidth,padding: EdgeInsets.only(left: 20.0,top: 20.0,right: 10.0,bottom: 10.0),child: new Text(text,textAlign: TextAlign.left,style: Theme.of(context).textTheme.subhead,))
    ],crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.end,);
  }

}
