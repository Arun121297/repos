import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:videoplaye_handling/view/carosel.dart';
import 'package:videoplaye_handling/view/data.dart';

import 'videoplayer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: ManuallyControlledSlider()
          //  Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     // CarouselSlider.builder(
          //     //   carouselController: buttonCarouselController,
          //     //   options:
          //     //       CarouselOptions(height: 400.0, padEnds: true, reverse: false),
          //     //   itemCount: image1.length,
          //     //   itemBuilder:
          //     //       (BuildContext context, int itemIndex, int pageViewIndex) =>
          //     //           SizedBox(
          //     //     height: MediaQuery.of(context).size.height,
          //     //     child: image1[itemIndex]['type'] != "image"
          //     //         ? Video_Player(
          //     //             urls: image1[itemIndex]['url']!,
          //     //           )
          //     //         : Image.asset(image1[itemIndex]['url']!, fit: BoxFit.cover),
          //     //   ),
          //     // ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         ElevatedButton(
          //           onPressed: () {
          //             buttonCarouselController.previousPage();
          //           },
          //           child: Text("Previous"),
          //         ),
          //         ElevatedButton(
          //           onPressed: () {
          //             buttonCarouselController.nextPage();
          //           },
          //           child: Text("Next"),
          //         ),
          //       ],
          //     )
          //   ],
          // ),
          ),
    );
  }
}
