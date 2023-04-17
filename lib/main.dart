import 'package:chapter_6_8/screen/PageViewScreen.dart';
import 'package:chapter_6_8/screen/webview_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(SplashPage());
}

class SplashPage extends StatelessWidget {
  var logo = Image.asset(
    'assets/images/logo.png',
    width: 200,
    height: 200,
  );
  var progress = const CircularProgressIndicator(
    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
  );

  SplashPage() : super(key: const Key('SplashPage'));

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(WebViewScreen());
    });

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: PageViewStateScreen(),
      home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
            color: Color(0xFFF99231),
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                logo,
                progress,
              ],
            ),
          ],
        ),
      )),
    );
  }
}
