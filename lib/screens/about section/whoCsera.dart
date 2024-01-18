import 'package:flutter/material.dart';

class whoCsera extends StatefulWidget {
  const whoCsera({super.key});

  @override
  State<whoCsera> createState() => _whoCseraState();
}

class _whoCseraState extends State<whoCsera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Who'),
      ),
    );
  }
}
