import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qrcode/routes/pages_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // GoRouter.of(context).go(RouteName.setting);
                  GoRouter.of(context).goNamed(RouteName.setting);
                },
                child: Text('Go To Setting Page')),
            ElevatedButton(
                onPressed: () {
                  // GoRouter.of(context).go('/${RouteName.allProduct}');
                  GoRouter.of(context).goNamed(RouteName.allProduct);
                },
                child: Text('All Product')),
          ],
        ),
      ),
    );
  }
}
