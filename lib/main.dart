import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Flutter Demo',
      theme: AppTheme(selectedColor: 3).getTheme(),
      debugShowCheckedModeBanner: false,

      // home: HomeScreen(), Primer pantalla de home de forma nativa
      // initialRoute: "/",

      // routes: {
      // Segunda manera de navegar, version de rutas de forma nativa
      // "/": (context) => HomeScreen(),
      // "/buttons": (context) => ButtonsScreen(),
      // "/cards": (context) => CardsScreen(),
      // },
    );
  }
}
