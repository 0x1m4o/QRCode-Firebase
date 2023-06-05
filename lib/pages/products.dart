import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qrcode/routes/pages_name.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Page'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              // context.go('/product/${index + 1}');
              context.goNamed('pathId', pathParameters: {'id': '${index + 1}'});
            },
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text('Product ${index + 1}'),
          );
        },
      ),
    );
  }
}
