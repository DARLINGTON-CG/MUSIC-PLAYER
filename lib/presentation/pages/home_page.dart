import 'package:flutter/material.dart';
import 'package:music_player/presentation/animations/widget_animation/slide_up.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _slideUpController;
  late Animation<double> _slideUp;

  @override
  void initState() {
    super.initState();
    _slideUpController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));

    _slideUp = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _slideUpController, curve: Curves.easeInOutExpo));

    _slideUpController.forward();
  }

  @override
  void dispose() {
    _slideUpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.multiple_stop_rounded,
                color: Colors.black,
              )),
          centerTitle: true,
          title: Text(
            "All Music",
            style: Theme.of(context).textTheme.headline2,
          ),
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 10), child: Icon(Icons.shuffle))
          ],
        ),
        resizeToAvoidBottomInset: false,
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.black,
          child: Icon(
            Icons.play_arrow_outlined,
            color: Colors.white,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 1,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.source_rounded), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_music_rounded), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.explore), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_box_rounded), label: ""),
            ]),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                    width: 100,
                    height: 100,
                    child: Center(
                        child: CircularProgressIndicator(
                      color: Colors.red,
                    ))),
              )
            ],
          ),
        ));
  }
}
