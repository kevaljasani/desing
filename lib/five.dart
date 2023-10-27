import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main()
{
  runApp(MaterialApp(home: five(),
  debugShowCheckedModeBanner: false,));
}

class five extends StatefulWidget {
  const five({super.key});

  @override
  State<five> createState() => _fiveState();
}

class _fiveState extends State<five> {

  bool t =false;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        print(orientation);

        if(Orientation.portrait == orientation)
          {
            SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
            overlays: SystemUiOverlay.values);
            t=true;
          }
        else
          {
            SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
            overlays: [SystemUiOverlay.bottom]);
            t=false;
          }




      return Scaffold(

        appBar: (t)?AppBar(title: Text("App"),):null,

        body: GridView.builder(
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (t)?3:5, mainAxisSpacing: 5,crossAxisSpacing: 5),

            itemBuilder: (context, index) {
              return Container(
                height: 200,
                width: 200,
                color: Colors.orangeAccent,
              );
            },),

      );
    },);
  }
}
