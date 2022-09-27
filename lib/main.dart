import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carouselThemes = [
      "https://i.imgur.com/JFQoeB8.png",
      "https://i.imgur.com/KhBFV6T.png",
      "https://i.imgur.com/vKSYVwR.png",
      "https://i.imgur.com/IvCTKGH.png"
    ];

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chatter'),
        ),
        body: Container(
        decoration : BoxDecoration (
      gradient : LinearGradient (
        colors : [
         Colors.green.shade900 ,
         Color(0xff196A7A),
         Colors.greenAccent
      ],
        begin : Alignment.topCenter ,
        end : Alignment.bottomCenter ,
     )
          ),
          child: ListView(
            children: [
              SizedBox(height: 15,),
              CarouselSlider.builder(
                itemCount: carouselThemes.length,
                itemBuilder: (context, index, realIndex){
                  final carouselTheme = carouselThemes[index];
                  return buildTheme(carouselTheme, index);
                 },
                options: CarouselOptions(
                  height: 400,
                  autoPlay: false,

                ),
              ),
            ],
          ),
        ),
      )
    );
  }

  Widget buildTheme(String cardTheme, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    child: SizedBox(
      width: 1300,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.network(cardTheme, fit:BoxFit.cover),
      )
    )
  );
}