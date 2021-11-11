import 'package:flutter/material.dart';
import 'widgets/circleTrackWidget.dart';
import 'widgets/trackWidget.dart';
import 'database.dart';
import 'musicPlayer.dart';
import 'player.dart';

double currentSlider = 0;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.grey[900],
        elevation: 0,
        leading: Icon(Icons.search),
        actions: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, listeners",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "happy music",
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 8, left: 15),
            child: Icon(
              Icons.notifications_active_outlined,
              size: 30,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "your playlist",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10, bottom: 20),
                  child: Text(
                    "10 playlists",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ),
                Container(
                  height: 300,
                  child: TrackWidget(refresh),
                ),
                CircleTrackWidget(
                  song: mostPopular,
                  title: "Song List",
                  subtitle: "346 songs",
                  notifyParent: refresh,
                ),
                SizedBox(
                  height: 130,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: PlayerHome(currentSong),
          )
        ],
      ),
    );
  }

  refresh() {
    setState(() {});
  }
}





