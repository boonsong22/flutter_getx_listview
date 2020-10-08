import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_listview/app/modules/home/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
        centerTitle: true,
      ),
      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: [..._.items]),
        ),
      ),
    );
  }
}
