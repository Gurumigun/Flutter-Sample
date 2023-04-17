import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageViewStateScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PageViewStateScreenState();
}

class _PageViewStateScreenState extends State<PageViewStateScreen> {
  PageViewScreen pageViewScreen = PageViewScreen();
  @override
  void initState() {
    super.initState();
    Timer.periodic(
        const Duration(seconds: 3),
        (timer) {
          print("실행 3초");
          int page = pageViewScreen.controller.page?.toInt() ?? 0;
          if (page < 4) {
            pageViewScreen.controller.animateToPage(
                page + 1,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn
            );
          } else {
            pageViewScreen.controller.animateToPage(
                0,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn
            );
          }
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return pageViewScreen;
  }
}

class PageViewScreen extends StatelessWidget {
  final PageController controller = PageController();
  PageViewScreen() : super(key: const Key('PageViewScreen'));

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: PageView(
          controller: controller,
          children: [1, 2, 3, 4, 5].map((number) =>
              Container(
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Page $number',
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              )
          ).toList()
      ),
    );
  }
}