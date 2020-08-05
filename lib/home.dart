import 'package:asset_app/audioPlayer.dart';
import 'package:asset_app/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

var myPauseIcon = Icon(
  Icons.pause,
  color: Colors.yellow.shade800,
);
var myPauseButton = IconButton(
  icon: myPauseIcon,
  onPressed: audioPause,
);
var myStopIcon = Icon(Icons.stop, color: Colors.red);
var myStopButton = IconButton(
  icon: myStopIcon,
  onPressed: audioStop,
);

myHomePage() {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text('Audio-Video Player'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height:35,
            width: 20,
          ),
          Container(
            width: 200,
            height: 200,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                //color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/86/62/11/866211be5c328632afbf53490477206c.jpg"),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.lightBlueAccent.shade400,
                      spreadRadius: 40,
                      blurRadius: 100,
                      offset: Offset(6, 6))
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          Container(
            padding: EdgeInsets.only(left: 80, right: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  alignment: Alignment.center,
                  child: Container(
                      child: IconButton(
                    icon: Icon(
                      Icons.play_arrow,
                      color: Colors.green.shade900,
                    ),
                    onPressed: audioPlay,
                  )),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  alignment: Alignment.center,
                  child: Container(child: myPauseButton),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  alignment: Alignment.center,
                  child: Container(child: myStopButton),
                ),
              ],
            ),
          ),
          SizedBox(height:45,),
          Container(
            height: 240,
            width: 360,
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
              
            ),
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.network(
                  'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4'),
            ),
          )
        ],
      ),
    ),
  );
}
