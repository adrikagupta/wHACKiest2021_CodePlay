import 'package:flutter/material.dart';
import 'models/halls.dart';
import 'utilities/halls_content.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
            return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CachedNetworkImage(
                      imageUrl: halls[index].photo,
                      placeholder: (context, url) => new CircularProgressIndicator(),
                      errorWidget: (context, url, error) => new Icon(Icons.error),
                      ),
                      Text('Location: ${halls[index].location}'),
                      Text('Size: ${halls[index].size}'),
                      Text('Ph No: ${halls[index].phNo}'),
                      Text('Cost: ${halls[index].cost.toString()}/-'),
                      Text('No. of guests: ${halls[index].numberOfGuests.toString()}'),
                      halls[index].available?Text('Available'):Text('Not Available'),
                    ],
                  )
                );
          },
        ),
      ),
    );
  }
}
