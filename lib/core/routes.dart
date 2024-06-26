import 'package:flutter_free_life_app/core/loader.dart';
import 'package:flutter_free_life_app/screens/core/error.dart';
import 'package:flutter_free_life_app/screens/static/boarding.dart';
import 'package:go_router/go_router.dart';

import '../screens/client/login.dart';
import '../screens/client/profile.dart';
import '../screens/client/register.dart';
import '../screens/home.dart';
import '../screens/product/product.dart';
import '../screens/product/search.dart';
import '../screens/static/about.dart';
import '../screens/static/contact.dart';


// GoRouter configuration
final routes = GoRouter(
  errorBuilder: (context, state) => const ErrorScreen(), //hata alinca buraya git
  routes: [
    GoRoute(
      path: '/boarding',
      builder: (context, state) => const BoardingScreen(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const LoaderScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const AboutScreen(),
    ),
    GoRoute(
      path: '/contact',
      builder: (context, state) => const ContactScreen(),
    ),
    GoRoute(
      path: '/product',
      builder: (context, state) => const ProductScreen(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchScreen(),
    ),
  ],
);