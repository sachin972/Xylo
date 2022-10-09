import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Center(
            child: Text("XyloPhone"),
          ),
        ),
        body: XyloPhone(),
      ),
    );
  }
}

class XyloPhone extends StatefulWidget {
  const XyloPhone({Key? key}) : super(key: key);

  @override
  State<XyloPhone> createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {

  void playMusic(int musicNum){
    final player = AudioCache();
    player.play('assets_note$musicNum.wav');
  }

  Widget buttons(int music, Color colora){
    return Expanded(
      child: TextButton(onPressed: (){
        playMusic(music);
      },
        child: Container(

          color: colora,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buttons(1,Colors.red),
          buttons(2,Colors.orange),
          buttons(3,Colors.yellow),
          buttons(4,Colors.green),
          buttons(5,Colors.teal),
          buttons(6,Colors.blue),
          buttons(7,Colors.purple),
        ],
      ),
    );
  }
}

