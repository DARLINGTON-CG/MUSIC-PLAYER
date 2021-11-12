import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor:Colors.green,
        body: SafeArea(
            child: Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height / 8,
          child: Transform.rotate(
            angle: -1.57,
            child: Row(
              children: const [
                Icon(Icons.music_note_outlined),
                Text("Music app"),
              ],
            ),
          ),
        ),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 5,
            left: MediaQuery.of(context).size.width / 10,
            child: Text(
              "Hi,🎧\nWelcome\nto Gramophone",
              style: Theme.of(context).textTheme.headline1,
            )),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 10,
            right: MediaQuery.of(context).size.width / 4,
            child: RichText(
                text: TextSpan(
                    text: "Just  tap\t",
                    style: Theme.of(context).textTheme.bodyText2,
                    children: [
                  TextSpan(
                    text: "Play",
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ]))),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 9.3,
            right: MediaQuery.of(context).size.width / 9,
            child: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.play_circle_rounded,
                  size: 65,
                  color: Colors.white.withOpacity(0.9),
                ))),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 6,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 600,
              child: const RiveAnimation.asset("assets/rive/speaker_rive.riv"),
            ))
      ],
    )));
  }
}
