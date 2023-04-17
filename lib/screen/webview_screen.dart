import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class WebViewScreen extends StatelessWidget {
  WebViewController webViewController = WebViewController()..loadRequest(Uri.parse('https://www.google.com'));

  WebViewScreen() : super(key: const Key('WebViewScreen'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebView'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              webViewController.reload();
            },
          ),
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              webViewController.goBack();
              Get.offAllNamed('/home');
            },
          ),
        ],
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: WebViewWidget(
        controller: webViewController,
      ),
    );
  }
}
