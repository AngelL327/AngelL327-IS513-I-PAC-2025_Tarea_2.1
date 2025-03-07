import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:redit_clone/src/views/detalle_producto_page.dart';
import 'package:redit_clone/src/views/home_page.dart';

final router = GoRouter(
  initialLocation: '/productos',
  routes: [
    GoRoute(
      path: '/productos',
      name: 'productos',
      builder: (context, settings) => HomePage(),
      routes: [
        GoRoute(
          path: '/:productoId', // /productos/4
          name: 'detalle-producto',
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