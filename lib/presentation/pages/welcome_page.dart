import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class WelcomePage extends StatefulWidget {
  final double screenHeight;

  const WelcomePage({Key? key, required this.screenHeight}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> with TickerProviderStateMixin {
  late AnimationController _splashController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _splashController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));

    _animation = Tween<double>(
      begin: 0.0,
      end: widget.screenHeight,
    ).animate(CurvedAnimation(parent: _splashController, curve: Curves.easeIn));
  }

  @override
  void dispose() {
    _splashController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
        body: Stack(
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
                onPressed: () async {
                  await _splashController.forward();
                  if (_splashController.isCompleted) {
                    Navigator.of(context).pushReplacementNamed("/home_page");
                  }
                },
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
            )),
        AnimatedBuilder(
            animation: _animation,
            builder: (_, Widget? child) {
              return Positioned(
                  bottom: (MediaQuery.of(context).size.height / 9.3) -
                      _animation.value, //-_animation.value,//-_animation.value,
                  right: (MediaQuery.of(context).size.width / 9) -
                      _animation.value, //-_animation.value,//-_animation.value,
                  child: Container(
                      width: 2 * _animation.value,
                      height: 2 * _animation.value,
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.circle,
                      )));
            }),
      ],
    ));
  }
}
