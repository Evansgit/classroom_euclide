import 'dart:math' as math;

import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:crypto_template/Screen/Template_Material/screen/Slider/Slider/Concept5Slider/BuildingTransformer.dart';
import 'package:crypto_template/Screen/Template_Material/screen/Slider/Slider/Concept5Slider/welcome.dart';
import 'package:crypto_template/Screen/Template_Material/screen/Slider/Slider/Concept5Slider/zero.dart';

import 'ProductListViewBuilder.dart';
import 'images.dart';

List<Color> list = [Colors.yellow, Colors.green, Colors.blue];

List<String> images = [
  'assets/images/nft/1.jpg',
  'assets/images/nft/2.jpg',
  'assets/images/nft/3.jpg',
];

class Concept5Slider extends StatelessWidget {
  const Concept5Slider({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  IndexController? _controller;
  final List<String> _types = [
    'AccordionTransformer',
    'ThreeDTransformer',
    'ScaleAndFadeTransformer',
    'ZoomInPageTransformer',
    'ZoomOutPageTransformer',
    'DeepthPageTransformer'
  ];

  String? _type;
  FixedExtentScrollController? controller;
  int? _index = 0;
  double _viewportFraction = 1.0;

  @override
  void initState() {
    _controller = IndexController();
    _type = 'AccordionTransformer';
    controller = FixedExtentScrollController();
    super.initState();
  }

  PageTransformer getTransformer() {
    switch (_type) {
      case 'AccordionTransformer':
        return AccordionTransformer();
      case 'ThreeDTransformer':
        return ThreeDTransformer();
      case 'ScaleAndFadeTransformer':
        return ScaleAndFadeTransformer();
      case 'ZoomInPageTransformer':
        return ZoomInPageTransformer();
      case 'ZoomOutPageTransformer':
        return ZoomOutPageTransformer();
      case 'DeepthPageTransformer':
        return DepthPageTransformer();
    }

    throw Exception('Not a type');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
        actions: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) {
                    return const ProductListView();
                  },
                ),
              );
            },
            child: const Text('route'),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Wrap(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  _controller!.move(math.Random().nextInt(5));
                },
                child: const Text('Random'),
              ),
              SizedBox(
                width: 5.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (b) {
                        return Scaffold(
                          appBar: AppBar(
                            title: const Text('images'),
                          ),
                          body: const ImageTest(),
                        );
                      },
                    ),
                  );
                },
                child: const Text('Image'),
              ),
              SizedBox(
                width: 5.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (b) {
                        return Scaffold(
                          appBar: AppBar(
                            title: const Text('welcome'),
                          ),
                          body: Welcome(0),
                        );
                      },
                    ),
                  );
                },
                child: const Text('Welcome'),
              ),
              SizedBox(
                width: 5.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (b) {
                        return const Zero();
                      },
                    ),
                  );
                },
                child: const Text('Zero'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  _controller!.previous();
                },
                child: const Text('Preious'),
              ),
              const SizedBox(
                width: 8.0,
              ),
              ElevatedButton(
                onPressed: () {
                  _controller!.next();
                },
                child: const Text('Next'),
              ),
              const SizedBox(
                width: 8.0,
              ),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (_) {
                      return CupertinoPicker(
                        scrollController: controller,
                        itemExtent: 30.0,
                        onSelectedItemChanged: (int index) {
                          setState(() {
                            controller = FixedExtentScrollController(
                              initialItem: index,
                            );
                            _type = _types[index];
                            if (_type == 'ScaleAndFadeTransformer') {
                              _viewportFraction = 0.8;
                            } else {
                              _viewportFraction = 1.0;
                            }
                          });
                        },
                        children: _types.map((t) => Text(t)).toList(),
                      );
                    },
                  );
                },
                child: const Text('Animation'),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(
              child: TransformerPageView(
                index: _index,
                viewportFraction: _viewportFraction,
                controller: _controller,
                transformer: getTransformer(),
                onPageChanged: (int? index) {
                  setState(() {
                    _index = index;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    images[index],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: 3,
              ),
            ),
          )
        ],
      ),
    );
  }
}
