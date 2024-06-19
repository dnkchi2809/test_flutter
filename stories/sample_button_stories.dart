import 'package:flutter/material.dart';
import 'widget/sample_button.dart';

Widget primary() {
  debugPrint('debugPrint là lá la là la');
  return const Button('Button', ButtonStyles.primary);
}

Widget secondary() => const Button('Button', ButtonStyles.secondary);

Widget disabled() => const Button('Button', ButtonStyles.disabled);
