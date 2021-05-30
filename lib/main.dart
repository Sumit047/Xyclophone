import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';
void main() {
  runApp(
     Xyclophone()
  );
}


class Xyclophone extends StatelessWidget {
  void playsound(int num){
    final player=AudioCache();
    player.play('note$num.wav');
  }
  Expanded playonebyone({color,num})
  {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playsound(num);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          title: Center(child: Text("PlAY TUNES",),),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              playonebyone(color: Colors.red.shade700, num: 1),
              playonebyone(color: Colors.orange.shade700, num: 2),
              playonebyone(color: Colors.yellow.shade700, num: 3),
              playonebyone(color: Colors.teal.shade700, num: 4),
              playonebyone(color: Colors.green.shade700, num: 5),
              playonebyone(color: Colors.blue.shade700, num: 6),
              playonebyone(color: Colors.purple.shade700, num: 17),
            ],

          ),
        ),
      ),
    );
  }
}
