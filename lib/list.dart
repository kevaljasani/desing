import 'dart:math';

import'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: second(),));
}

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {

  List name=["Squirtle","two","Charmander","Pikachu","five","six","seven","eight","Cyndaquil","ten"];

  List images=["images (1).jpg","images(2).png","images(3).jpg","images(4).jpg","images(5).png",
    "images(6).jpg","images(7).jpg", "images(8).jpg","images(9).jpg","images(10).jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: ListView.builder(
        itemCount: name.length,
          itemBuilder: (context, index){
            return Card(
              child:ListTile(
                title: Text("${index+1}"),
                subtitle: Text("${name[index]}"),
                trailing: Icon(Icons.games),
                leading: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset("pic/${images[index]}")
                ),
              ) ,
            );
      },),
    );
  }
}