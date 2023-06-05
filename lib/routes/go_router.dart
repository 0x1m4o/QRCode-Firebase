import 'package:go_router/go_router.dart';
import 'package:qrcode/routes/pages_name.dart';

import '../pages/homepage.dart';
import '../pages/settings.dart';
import '../pages/detail_product.dart';
import '../pages/products.dart';
import '../pages/error.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  errorBuilder: (context, state) => const ErrorPage(),
  routes: [
    GoRoute(
        path: RouteName.home,
        name: RouteName.home,
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
              path: RouteName.allProduct,
              name: RouteName.allProduct,
              builder: (context, state) => const ProductPage(),
              routes: [
                GoRoute(
                  path: RouteName.productID,
                  name: 'pathId',
                  builder: (context, state) =>
                      DetailProduct(state.pathParameters['id'].toString()),
                ),
              ]),
        ]),
    GoRoute(
      path: RouteName.setting,
      name: RouteName.setting,
      builder: (context, state) => const SettingPage(),
    )
  ],
);
