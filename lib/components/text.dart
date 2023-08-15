import 'package:flutter/material.dart';

class TextSmall extends StatelessWidget {
  const TextSmall(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w100,
      ),
    );
  }
}

class TextMedium extends StatelessWidget {
  const TextMedium(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w100,
      ),
    );
  }
}

class TextLarge extends StatelessWidget {
  const TextLarge(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
