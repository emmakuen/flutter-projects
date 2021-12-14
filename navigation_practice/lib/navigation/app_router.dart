import 'package:flutter/material.dart';
import 'package:navigation_practice/models/models.dart';
import 'package:navigation_practice/screens/screens.dart';

class AppRouter extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  final AppStateManager appStateManager;
  final GroceryManager groceryManager;
  final ProfileManager profileManager;

  AppRouter({
    required this.appStateManager,
    required this.groceryManager,
    required this.profileManager,
  }) : navigatorKey = GlobalKey<NavigatorState>() {
    // TODO: Add listeners
  }

  // TODO: Dispose listeners

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      // TODO: Add onPopPage
      pages: [
        // TODO: Add SplashScreen
        // TODO: Add LoginScreen
        // TODO: Add OnboardingScreen
        // TODO: Add Home
        // TODO: Create new item
        // TODO: Select GroceryItemScreen
        // TODO: Add Profile Screen
        // TODO: Add WebView Screen
      ],
    );
  }

  // TODO: Add _handlePopPage

  @override
  Future<void> setNewRoutePath(configuration) async => null;
}
