import 'package:flutter/material.dart';
import 'package:reddit_clone_fullstack/features/home/home_screen.dart';
import 'package:reddit_clone_fullstack/screen/login_screen.dart';
import 'package:routemaster/routemaster.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: LoginSCreen()),
});

final loggedInRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: HomeScreen()),
});