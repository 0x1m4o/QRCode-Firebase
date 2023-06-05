import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qrcode/routes/pages_name.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // context.go(RouteName.home);
                  context.goNamed(RouteName.home);
                },
                child: Text('Go to Home Page'))
          ],
        ),
      ),
    );
  }
}
