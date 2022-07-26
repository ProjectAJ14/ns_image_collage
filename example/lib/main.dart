import 'package:flutter/material.dart';
import 'package:ns_image_collage/ns_image_collage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<NSImage> oneImage = [
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=1',
    ),
  ];
  List<NSImage> twoImages = [
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=2',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=3',
    ),
  ];
  List<NSImage> threeImages = [
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=4',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=5',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=6',
    ),
  ];
  List<NSImage> fourImages = [
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=7',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=8',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=9',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=10',
    ),
  ];
  List<NSImage> fiveImages = [
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=11',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=12',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=13',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=14',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=15',
    ),
  ];

  List<NSImage> sixImages = [
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=11',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=12',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=13',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=14',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=15',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=14',
    ),
  ];
  List<NSImage> moreThanFiveImages = [
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=16',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=17',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=18',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=19',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=20',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=21',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=22',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=23',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=24',
    ),
    NSImage(
      url:
          'https://source.unsplash.com/640x1200?nature,water,mountain,sunset,sunrise&random=25',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PageView(
        children: [
          NSImageCollage(
            images: oneImage,
          ),
          NSImageCollage(
            images: twoImages,
          ),
          NSImageCollage(
            images: threeImages,
          ),
          NSImageCollage(
            images: fourImages,
          ),
          NSImageCollage(
            images: fiveImages,
          ),
          NSImageCollage(
            images: sixImages,
          ),
          NSImageCollage(
            images: moreThanFiveImages,
          ),
        ],
      ),
    );
  }
}
