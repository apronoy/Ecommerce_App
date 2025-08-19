 import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class onboardingPage extends StatelessWidget {
  onboardingPage({
    super.key,
    required this.animation,
    required this.title,
    required this.subtitle,
  });
  final String animation;
  final String title;
  final String subtitle;
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: kToolbarHeight,
      ),
      child: Column(
        children: [
          Lottie.asset(animation),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
