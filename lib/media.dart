import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: four(),));
}

class four extends StatefulWidget {
  const four({super.key});

  @override
  State<four> createState() => _fourState();
}

class _fourState extends State<four> {
  @override
  Widget build(BuildContext context) {

    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    double status=MediaQuery.of(context).padding.top;
    double app_bar=kToolbarHeight;

    double total_h=height-app_bar-status;
    double font=total_h*0.05;
    return Scaffold(

      appBar: AppBar(),

      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: total_h/2,
            width: width,
            color: Colors.yellow,
            child: Text("HELLO",style: TextStyle(fontSize: font),),
          ),

          Container(
            alignment: Alignment.center,
            height: total_h/2,
            width: width,
            color:Colors.orange,
            child: Text("BOYS",style: TextStyle(fontSize: font),),
          )
        ],
      ),
    );
  }
}
