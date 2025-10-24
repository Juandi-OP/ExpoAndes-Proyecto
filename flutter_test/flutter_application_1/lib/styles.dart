import 'package:flutter/material.dart';

class StyledBodyText extends StatelessWidget {
  const StyledBodyText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      color: Color.fromARGB(255, 0, 93, 116),
      fontWeight: FontWeight.bold,
      fontSize:16,
    ),);
  }
}

class StyledButton extends StatelessWidget {
  const StyledButton({
    super.key,
    required this.onPressed,
    required this.child,

  });

  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 0, 93, 116),
        foregroundColor: Colors.white,

      ),
      onPressed: onPressed,
      child: child);
  }
}