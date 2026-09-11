import 'package:go_router/go_router.dart';

import '../../presentation/screens/index.dart';

final appRouter = GoRouter(
  // initialLocation: "/", Ruta inicial de esta forma o como se muestra a continuacion
  routes: [
    GoRoute(
      path: "/",
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: "/buttons",
      name: ButtonsScreen.name,
      builder: (context, state) => ButtonsScreen(),
    ),
    GoRoute(path: "/cards", builder: (context, state) => CardsScreen()),
  ],
);
