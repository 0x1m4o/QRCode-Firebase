import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct(this.data, this.query, {super.key});

  final Map<String, dynamic> data;
  final Map<String, dynamic> query;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(query['title']),
      ),
      body: Center(child: Text(query['description'])),
    );
  }
}
