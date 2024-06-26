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
                  titleStyle:
                      const TextStyle(color: Colors.black, fontSize: 18),
                  content: Container(
                    color: Colors.black,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: const Text(
                      '"We are the best Flutter App Development Company!',
                      style: TextStyle(color: Colors.white),
                    ),
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
