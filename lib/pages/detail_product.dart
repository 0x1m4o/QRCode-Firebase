import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct(this.id, {super.key});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products $id'),
      ),
    );
  }
}
