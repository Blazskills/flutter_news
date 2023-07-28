import 'package:flutter/material.dart';
import 'package:toistify/features/blog/model/news_model.dart';

class DetailScreenPage extends StatelessWidget {
  const DetailScreenPage({super.key, required this.value});

  final NewsModel value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Details'),
      ),
      body:  Column(children: [
        Text(value.author!)
      ],),
    );
  }
}
