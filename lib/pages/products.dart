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
          String newIndex = '${index + 1}';

          return ListTile(
            onTap: () {
              context.goNamed('pathId', pathParameters: {
                'id': '$newIndex'
              }, queryParameters: {
                'title': 'Product $newIndex',
                'description': 'Description of Product $newIndex'
              });
            },
            leading: CircleAvatar(child: Text('$newIndex')),
            title: Text('Product $newIndex'),
          );
        },
      ),
    );
  }
}
