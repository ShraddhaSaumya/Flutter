import 'package:assets_audio_player/assets_audio_player.dart';

AssetsAudioPlayer audioPlayer=AssetsAudioPlayer();

audioPlay(){
  //print(audioPlayer.isPlaying.value);
  
  var state = audioPlayer.currentPosition.value.toString();
  print(state);
  if(state == "0:00:00.000000"){
    audioPlayer.open(
        Audio("assets/audios/time-alarm.mp3"),
    );
  }else{
    audioPlayer.play();
  }
}
 
audioPause(){
  audioPlayer.pause();
}

audioStop(){
  audioPlayer.stop();
}