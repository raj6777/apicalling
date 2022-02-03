import 'package:flutter/material.dart';

import 'apimanager.dart';
import 'model/models.dart';

void main() {
  runApp(HomePage());
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<GoRestEg>? _goRestEg;
  @override
  void initState() {
     user().getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:  Scaffold(
        appBar: AppBar(title: Text("api calling"),
        ),
        body: Container(
          // child: FutureBuilder<GoRestEg>(
          //   future: _goRestEg,
          //   builder: (context,snapshot){
          //     print(snapshot);
          //     if(snapshot.hasData){
          //       return Container();
          //         ListView.builder(
          //         itemCount: snapshot.data?.toJson().length,
          //         itemBuilder: (context,index){
          //           print(snapshot.data?.id);
          //           return Container();
          //         },
          //       );
          //     }
          //     else{
          //       return Center(child: CircularProgressIndicator(),);
          //     }
          //   },
          // ),
        ),
      ),
    );

  }
}
