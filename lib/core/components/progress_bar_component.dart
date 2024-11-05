import 'package:flutter/material.dart';

class ProgressBarComponent extends StatelessWidget {
  final double progress;

  const ProgressBarComponent({Key? key, required this.progress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(value: progress);
  }
}
