import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

//    int result = await audioPlayer.play(localPath, isLocal: true);

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber) // method to play sounds
  {
    final player= AudioCache();
    player.play('note$soundnumber.wav');
  }
  //const XylophoneApp({Key? key}) : super(key: key);
Expanded buildKey( Color blockColor, int soundNumber)
{
  return Expanded(
    child: InkWell(
      enableFeedback: false, //disable click sound
      child: Container(
        color: blockColor,
      ),
      onTap: ()
      {
        playsound(soundNumber);
      },
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red,1),
              buildKey(Colors.orange,2),
              buildKey(Colors.yellow,3),
              buildKey(Colors.greenAccent,4),
              buildKey(Colors.teal,5),
              buildKey(Colors.blue,6),
              buildKey(Colors.deepPurpleAccent,7),

            ],
          ),
        ),
      ),
    );
  }
}

//
// class XylophoneApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Column(
//
//           ),
//         ),
//       ),
//     );
//   }
// }
