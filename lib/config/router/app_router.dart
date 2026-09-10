import 'package:go_router/go_router.dart';

import '../../presentation/screens/index.dart';

final appRouter = GoRouter(
  // initialLocation: "/", Ruta inicial de esta forma o como se muestra a continuacion
  routes: [
    GoRoute(path: "/", builder: (context, state) => HomeScreen()),
    GoRoute(path: "/buttons", builder: (context, state) => ButtonsScreen()),
    GoRoute(path: "/cards", builder: (context, state) => CardsScreen()),
  ],
);
