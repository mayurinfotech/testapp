import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/core/controller/count_controller.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    final CountController c = Get.put(CountController());
    return Scaffold(
      appBar: AppBar(title: Text("Hello World"), centerTitle: true),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: FloatingActionButton(
          foregroundColor: Colors.white60,
          backgroundColor: Colors.blue,
          elevation: 12.0,
          onPressed: () {
            c.increment();
          },
          child: Icon(Icons.add, size: 26),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      // body
      body: Center(
        child: Container(
          decoration: BoxDecoration(),
          child: Obx(
            () => Text(
              c.count.toString(),
              style: TextStyle(color: Colors.blue, fontSize: 56),
            ),
          ),
        ),
      ),
    );
  }
}
