import 'package:flutter/material.dart';
class CustomFutureBuilder extends StatefulWidget {
  const CustomFutureBuilder({Key key}) : super(key: key);

  @override
  _CustomFutureBuilderState createState() => _CustomFutureBuilderState();
}

class _CustomFutureBuilderState extends State<CustomFutureBuilder> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadData(),
      builder: (context, snapshot){
        if(snapshot.hasData){
          return Text(snapshot.data);
        }else{
          return CircularProgressIndicator();
        }
        print('test');
      },
    );
  }

  Future<String> loadData()async{
    await Future.delayed(Duration(seconds: 2));
    return "Hello";
  }
}
