import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:redit_clone/src/views/detalle_producto_page.dart';
import 'package:redit_clone/src/views/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final router = GoRouter(
    initialLocation: '/productos',
    routes: [
      GoRoute(
        path: '/productos',
        name: 'productos',
        builder: (context, settings) => HomePage(),
        routes: [
          GoRoute(
            path: '/:proId', // /productos/4
            name: 'detal',
            builder: (BuildContext context, GoRouterState settings) {
              final id = settings.pathParameters['productoId'];

              final extras = settings.extra as Map;
              print(extras);

              return DetalleProductoPage(
                id: '$id',
                extras: extras,
              );
            },
          )
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routerConfig: router,
      // home: HomePage(),
    );
  }
}
