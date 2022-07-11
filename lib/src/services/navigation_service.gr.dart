// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'navigation_service.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    IntroScreenRoute.name: (routeData) {
      return AdaptivePage<IntroScreen>(
          routeData: routeData, child: const IntroScreen());
    },
    SignInRoute.name: (routeData) {
      return AdaptivePage<SignIn>(routeData: routeData, child: const SignIn());
    },
    CreateAccountRoute.name: (routeData) {
      return AdaptivePage<CreateAccount>(
          routeData: routeData, child: const CreateAccount());
    },
    ForgetPasswordRoute.name: (routeData) {
      return AdaptivePage<ForgetPassword>(
          routeData: routeData, child: const ForgetPassword());
    },
    EmailSentRoute.name: (routeData) {
      return AdaptivePage<EmailSent>(
          routeData: routeData, child: const EmailSent());
    },
    SearchRestaurantsRoute.name: (routeData) {
      return AdaptivePage<SearchRestaurants>(
          routeData: routeData, child: const SearchRestaurants());
    },
    HomeRoute.name: (routeData) {
      return AdaptivePage<Home>(routeData: routeData, child: const Home());
    },
    ItemDetailsRoute.name: (routeData) {
      return AdaptivePage<ItemDetails>(
          routeData: routeData, child: const ItemDetails());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(IntroScreenRoute.name, path: '/IntroScreen'),
        RouteConfig(SignInRoute.name, path: '/signIn'),
        RouteConfig(CreateAccountRoute.name, path: '/createAccount'),
        RouteConfig(ForgetPasswordRoute.name, path: '/forgetPassword'),
        RouteConfig(EmailSentRoute.name, path: '/emailSent'),
        RouteConfig(SearchRestaurantsRoute.name, path: '/searchRestaurants'),
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(ItemDetailsRoute.name, path: '/item/details')
      ];
}

/// generated route for
/// [IntroScreen]
class IntroScreenRoute extends PageRouteInfo<void> {
  const IntroScreenRoute() : super(IntroScreenRoute.name, path: '/IntroScreen');

  static const String name = 'IntroScreenRoute';
}

/// generated route for
/// [SignIn]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/signIn');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [CreateAccount]
class CreateAccountRoute extends PageRouteInfo<void> {
  const CreateAccountRoute()
      : super(CreateAccountRoute.name, path: '/createAccount');

  static const String name = 'CreateAccountRoute';
}

/// generated route for
/// [ForgetPassword]
class ForgetPasswordRoute extends PageRouteInfo<void> {
  const ForgetPasswordRoute()
      : super(ForgetPasswordRoute.name, path: '/forgetPassword');

  static const String name = 'ForgetPasswordRoute';
}

/// generated route for
/// [EmailSent]
class EmailSentRoute extends PageRouteInfo<void> {
  const EmailSentRoute() : super(EmailSentRoute.name, path: '/emailSent');

  static const String name = 'EmailSentRoute';
}

/// generated route for
/// [SearchRestaurants]
class SearchRestaurantsRoute extends PageRouteInfo<void> {
  const SearchRestaurantsRoute()
      : super(SearchRestaurantsRoute.name, path: '/searchRestaurants');

  static const String name = 'SearchRestaurantsRoute';
}

/// generated route for
/// [Home]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [ItemDetails]
class ItemDetailsRoute extends PageRouteInfo<void> {
  const ItemDetailsRoute()
      : super(ItemDetailsRoute.name, path: '/item/details');

  static const String name = 'ItemDetailsRoute';
}
