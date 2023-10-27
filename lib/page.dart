import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: third(),));
}

class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  
  List name=["one","two","three","four","five"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: PageView.builder(
          itemBuilder: (context, index){
        return Container(
          alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          color: Colors.green,
          child: Text("${name[index]}",style: TextStyle(fontSize: 50),),
        );
      }),
    );
  }
}

