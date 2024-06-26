import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              child: const Text('show dialog'),
              onPressed: () {
                Get.defaultDialog(
                  title: "Welcome to Flutter Agency",
                  middleText:
                      "We are the best Flutter App Development Company!",
                  titleStyle: const TextStyle(color: Colors.black),
                  content: Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                  ),
                  middleTextStyle: const TextStyle(color: Colors.black),
                  contentPadding: const EdgeInsets.all(0),
                  titlePadding: const EdgeInsets.all(16),
                  cancel: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('Cancel'),
                  ),
                  confirm: TextButton(
                    onPressed: () {},
                    child: const Text('Confirm'),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
