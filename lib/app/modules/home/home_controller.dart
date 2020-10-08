import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final List<Widget> items = new List<Widget>();
  @override
  void onInit() {
    Timer.periodic(new Duration(seconds: 2), (timer) {
      items.add(Container(
        padding: EdgeInsets.all(8.0),
        height: 200,
        width: Get.width,
        child: Image.network(
          'https://picsum.photos/250?image=' + timer.tick.toString(),
        ),
      ));
      update();
    });
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
