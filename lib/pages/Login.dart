import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'BottomBar.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          'Search Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}