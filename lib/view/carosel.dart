import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:videoplaye_handling/view/data.dart';
import 'package:videoplaye_handling/view/videoplayer.dart';

class ManuallyControlledSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ManuallyControlledSliderState();
  }
}

class _ManuallyControlledSliderState extends State<ManuallyControlledSlider> {
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Manually controlled slider')),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CarouselSlider.builder(
                itemCount: imgList.length,
                // items: imgList
                //     .map((item) => Stack(
                //           children: <Widget>[
                //             SizedBox(
                //               width: 400,
                //               // height: MediaQuery.of(context).size.height,
                //               child: item['type'] != "image"
                //                   ? Video_Player(
                //                       urls: item['url']!,
                //                     )
                //                   : Image.asset(item['url']!,
                //                       fit: BoxFit.cover),
                //             ),
                //             // Positioned(
                //             //   bottom: 0.0,
                //             //   left: 0.0,
                //             //   right: 0.0,
                //             //   child: Container(
                //             //     decoration: BoxDecoration(
                //             //       gradient: LinearGradient(
                //             //         colors: [
                //             //           Color.fromARGB(200, 0, 0, 0),
                //             //           Color.fromARGB(0, 0, 0, 0)
                //             //         ],
                //             //         begin: Alignment.bottomCenter,
                //             //         end: Alignment.topCenter,
                //             //       ),
                //             //     ),
                //             //     padding:
                //             //         EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                //             //     child: Text(
                //             //       'No. ${imgList.indexOf(item)} image',
                //             //       style: TextStyle(
                //             //         color: Colors.white,
                //             //         fontSize: 20.0,
                //             //         fontWeight: FontWeight.bold,
                //             //       ),
                //             //     ),
                //             //   ),
                //             // ),
                //           ],
                //         ))
                //     .toList(),
                options: CarouselOptions(
                  height: 400,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1.0,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  reverse: false,
                  autoPlay: false,
                  // autoPlayInterval: Duration(seconds: 3),
                  // autoPlayAnimationDuration: Duration(milliseconds: 800),
                  // autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  // onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
                carouselController: _controller,
                itemBuilder: (context, index, realIndex) => SizedBox(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height,
                  child: imgList[index]['type'] != "image"
                      ? Video_Player(
                          urls: imgList[index]['url']!,
                        )
                      : Image.asset(imgList[index]['url']!, fit: BoxFit.cover),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: ElevatedButton(
                      onPressed: () => _controller.previousPage(),
                      child: Text('←'),
                    ),
                  ),
                  Flexible(
                    child: ElevatedButton(
                      onPressed: () => _controller.nextPage(),
                      child: Text('→'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
