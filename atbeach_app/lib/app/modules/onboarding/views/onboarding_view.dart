import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 64),
      child: ListView(children: const <Widget>[
        Center(
          child: Text('Welcome, and get started!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
      ]),
    ));
  }
}
