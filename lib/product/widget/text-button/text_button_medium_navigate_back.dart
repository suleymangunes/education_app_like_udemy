import 'package:education_app_like_udemy/core/components/text-button/text_button_medium.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TextButtonMediumNavigateBack extends StatelessWidget {
  const TextButtonMediumNavigateBack({super.key, required this.path, required this.text, required this.wait});
  final String path;
  final String text;
  final bool wait;

  @override
  Widget build(BuildContext context) {
    return TextButtonMedium(
      function: wait == false
          ? () {
              GoRouter.of(context).pop();
            }
          : null,
      text: text,
      color: Colors.black,
    );
  }
}
