import 'package:go_router/go_router.dart';
import 'package:qrcode/pages/error.dart';

import '../pages/homepage.dart';
import '../pages/settings.dart';
import '../pages/error.dart';

// GoRouter configuration
final router = GoRouter(
  errorBuilder: (context, state) => ErrorPage(),
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomePage(), routes: [
      GoRoute(
        path: 'settings',
        builder: (context, state) => SettingPage(),
      ),
    ]),
  ],
);
