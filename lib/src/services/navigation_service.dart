import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:foodly/src/presentation/ui/main/home/home.dart';
import 'package:foodly/src/presentation/ui/main/item_details/item_details.dart';

import '../presentation/ui/Explore/search_restaurants/search_restaurants.dart';
import '../presentation/ui/auth/create_account/create_account.dart';
import '../presentation/ui/auth/forget_password/email_sent.dart';
import '../presentation/ui/auth/forget_password/forget_password.dart';
import '../presentation/ui/auth/sing_in/sign_in.dart';
import '../presentation/ui/preauth/intro/intro_screen.dart';

part 'navigation_service.gr.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute<IntroScreen>(
      path: '/IntroScreen',
      page: IntroScreen,
    ),
    AutoRoute<SignIn>(
      path: '/signIn',
      page: SignIn,
    ),
    AutoRoute<CreateAccount>(
      path: '/createAccount',
      page: CreateAccount,
    ),
    AutoRoute<ForgetPassword>(
      path: '/forgetPassword',
      page: ForgetPassword,
    ),
    AutoRoute<EmailSent>(
      path: '/emailSent',
      page: EmailSent,
    ),
    AutoRoute<SearchRestaurants>(
      path: '/searchRestaurants',
      page: SearchRestaurants,
    ),
    AutoRoute<Home>(
      page: Home,
      path: '/',
      initial: true,
    ),
    AutoRoute<ItemDetails>(
      page: ItemDetails,
      path: '/item/details',
    )
  ],
)
class AppRouter extends _$AppRouter {}
