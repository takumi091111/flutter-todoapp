import 'package:flutter/material.dart';

class IncompleteIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.radio_button_unchecked,
      color: Colors.grey
    );
  }
}

class DoneIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.done,
      color: Colors.lightGreen
    );
  }
}
