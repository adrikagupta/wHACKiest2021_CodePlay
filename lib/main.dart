import 'package:flutter/material.dart';
import 'models/halls.dart';
import 'utilities/halls_content.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'screens/hall_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Hall> halls = [Hall(p:link1,l:"location 1",s:"340x230",ph:"123456789",c:10000,n:50,a:true),
                      Hall(p:link2,l:"location 2",s:"540x430",ph:"123536789",c:20000,n:60,a:true),
                      Hall(p:link3,l:"location 3",s:"660x200",ph:"123346373",c:30000,n:65,a:false)];

  void book_hall(BuildContext ctx,int index){
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (_){
        return HallScreen(index);
      }
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: halls.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: ()=>book_hall(context,index),
              child:Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(padding: EdgeInsets.all(10.0),
                      child:CachedNetworkImage(
                      imageUrl: halls[index].photo,
                      placeholder: (context, url) => new CircularProgressIndicator(),
                      errorWidget: (context, url, error) => new Icon(Icons.error),
                      ),
                      ),
                      Padding(padding:EdgeInsets.fromLTRB(10.0,2.0,0,2.0),child:Text('Location: ${halls[index].location}')),
                      Padding(padding:EdgeInsets.fromLTRB(10.0,2.0,0,2.0),child:Text('Size: ${halls[index].size}')),
                      Padding(padding:EdgeInsets.fromLTRB(10.0,2.0,0,2.0),child:Text('Ph No: ${halls[index].phNo}')),
                      Padding(padding:EdgeInsets.fromLTRB(10.0,2.0,0,2.0),child:Text('Cost: ${halls[index].cost.toString()}/-')),
                      Padding(padding:EdgeInsets.fromLTRB(10.0,2.0,0,2.0),child:Text('No. of guests: ${halls[index].numberOfGuests.toString()}')),
                      halls[index].available?Chip(label:Text('Available'),
                      backgroundColor: Colors.green):Chip(label:Text('Not Available'),
                      backgroundColor: Colors.red),
                    ],
                  )
                ),
            );
          },
        ),
      ),
    );
  }
}
