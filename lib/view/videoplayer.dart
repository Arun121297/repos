import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:video_player/video_player.dart';

import '../controller/controller.dart';

class Video_Player extends StatefulWidget {
  Video_Player({Key? key, required this.urls}) : super(key: key);
  String urls;
  @override
  State<Video_Player> createState() => _Video_PlayerState();
}

class _Video_PlayerState extends State<Video_Player> {
  Controller Getcontroller = Get.put(Controller());

  @override
  void initState() {
    super.initState();
    Getcontroller.controller = VideoPlayerController.asset(
      widget.urls,
      // videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    )..initialize();

    Getcontroller.controller!.play();

    Getcontroller.controller!.setVolume(1.0);
    // currentVolume > 0 ? Getcontroller.controller!.setVolume(0) : null;
    // Getcontroller.currentVolume > 0
    //     ? Getcontroller.controller!.setVolume(1.0)
    //     : null;
    Getcontroller.controller?.setLooping(true);
  }

  @override
  void dispose() {
    Getcontroller.controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (Getcontroller.controller!.value.isPlaying) {
            // pause
            Getcontroller.controller!.pause();
            print("pause::::");
          } else {
            // play
            print("play::::");

            Getcontroller.controller!.play();
          }
        });
      },
      child: AspectRatio(
        aspectRatio: Getcontroller.controller!.value.aspectRatio,
        child: VideoPlayer(Getcontroller.controller!),
      ),
    );
  }
}
