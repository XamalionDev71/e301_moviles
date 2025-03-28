import 'package:e301_moviles/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/botones',
      builder: (context, state) => ButtonsScreen(),
    ),
    GoRoute(
      path: '/tarjetas',
      builder: (context, state) => CardsScreen(),
    ),
  ]
);
