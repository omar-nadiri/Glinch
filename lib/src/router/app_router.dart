import 'package:flutter/material.dart';
import 'package:glinch/src/features/auth/presentation/pages/auth_screen.dart';
import 'package:glinch/src/features/details/presentation/pages/details_screen.dart';
import 'package:glinch/src/features/home/presentation/pages/home_screen.dart';
import 'package:glinch/src/features/saved/presentation/pages/saved_screen.dart';
import 'package:glinch/src/features/search/presentation/pages/search_screen.dart';
import 'package:glinch/src/router/routes/scaffold_nested_navigation.dart';
import 'package:go_router/go_router.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorHomeKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _shellNavigatorPaymentsKey = GlobalKey<NavigatorState>(debugLabel: 'search');
final _shellNavigatorManageKey = GlobalKey<NavigatorState>(debugLabel: 'saved');

final goRouter = GoRouter(
  initialLocation: '/auth',
  navigatorKey: rootNavigatorKey,
  routes: [
    GoRoute(
      path: '/auth',
      name: 'auth',
      pageBuilder: (context, state) => const NoTransitionPage(
        child: AuthScreen(),
      ),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldNestedNavigation(
          navigationShell: navigationShell,
        );
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorHomeKey,
          routes: [
            GoRoute(
              parentNavigatorKey: _shellNavigatorHomeKey,
              path: '/home',
              name: 'home',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: HomeScreen(),
              ),
              routes: [
                GoRoute(
                  path: '/cocktail_details',
                  name: 'cocktail_details',
                  parentNavigatorKey: rootNavigatorKey,
                  builder: (BuildContext context, GoRouterState state) {
                    return const DetailsScreen();
                  },
                ),
              ],
            ),

          ],
        ),
        StatefulShellBranch(
          // observers: [GoRouterObserver()],
          navigatorKey: _shellNavigatorPaymentsKey,
          routes: [
            GoRoute(
              path: '/search',
              name: 'search',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: SearchScreen(),
              ),
              routes: [],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorManageKey,
          routes: [
            GoRoute(
              path: '/saved',
              name: 'saved',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: SavedScreen(),
              ),
              routes: [],
            ),
          ],
        ),
      ],
    ),
  ],
);
