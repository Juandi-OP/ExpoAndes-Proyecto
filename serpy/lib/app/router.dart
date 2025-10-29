// router.dart
// Definición de rutas utilizando go_router.

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/login_screen.dart';
import '../features/level/level_screen.dart';
import '../features/lesson_player/lesson_player_screen.dart';
import '../features/profile/profile_screen.dart';
import '../features/quiz/quiz_screen.dart';
import '../features/ranking/ranking_screen.dart';
import '../features/worlds/worlds_screen.dart';
import '../features/splash/splash_screen.dart';

GoRouter createAppRouter() {
  return GoRouter(
    initialLocation: '/splash',
    routes: <GoRoute>[
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        path: '/worlds',
        name: 'worlds',
        builder: (BuildContext context, GoRouterState state) {
          return const WorldsScreen();
        },
      ),
      GoRoute(
        path: '/level/:levelId',
        name: 'level',
        builder: (BuildContext context, GoRouterState state) {
          final String levelId = state.pathParameters['levelId'] ?? '';
          return LevelScreen(
            key: ValueKey<String>(levelId),
          );
        },
      ),
      GoRoute(
        path: '/lesson/:lessonId',
        name: 'lessonPlayer',
        builder: (BuildContext context, GoRouterState state) {
          final String lessonId = state.pathParameters['lessonId'] ?? '';
          return LessonPlayerScreen(
            key: ValueKey<String>(lessonId),
          );
        },
      ),
      GoRoute(
        path: '/quiz/:lessonId',
        name: 'quiz',
        builder: (BuildContext context, GoRouterState state) {
          final String lessonId = state.pathParameters['lessonId'] ?? '';
          return QuizScreen(
            key: ValueKey<String>(lessonId),
          );
        },
      ),
      GoRoute(
        path: '/ranking',
        name: 'ranking',
        builder: (BuildContext context, GoRouterState state) {
          return const RankingScreen();
        },
      ),
      GoRoute(
        path: '/profile',
        name: 'profile',
        builder: (BuildContext context, GoRouterState state) {
          return const ProfileScreen();
        },
      ),
    ],
  );
}
