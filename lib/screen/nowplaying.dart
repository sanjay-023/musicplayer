import 'package:flutter/material.dart';

class ScreenNowPLaying extends StatelessWidget {
  const ScreenNowPLaying({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Now playing'),
      ),
    );
  }
}
