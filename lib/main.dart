import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/config/dev_config.dart';

void main() async {
  final config = DevConfig();
  await config.init();
  runApp(config.initialWidget);
}