// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i11;

import '../auth/login.dart' as _i1;
import '../home/home_page.dart' as _i2;
import '../home/settings.dart' as _i6;
import '../pages/box_dec.dart' as _i4;
import '../posts/posts.dart' as _i7;
import '../posts/single_post.dart' as _i8;
import '../riverpod/riverpod_learn.dart' as _i3;
import '../user/user_profile.dart' as _i10;
import '../user/users_page.dart' as _i9;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginScreen());
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    RiverPod.name: (routeData) {
      final args =
          routeData.argsAs<RiverPodArgs>(orElse: () => const RiverPodArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.RiverPod(key: args.key));
    },
    BoxRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.BoxPage());
    },
    PostsRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    UsersRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    SettingsRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SettingsPage());
    },
    PostsRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.PostsPage());
    },
    SinglePostRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<SinglePostRouteArgs>(
          orElse: () =>
              SinglePostRouteArgs(postId: pathParams.getInt('postId')));
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.SinglePostPage(key: args.key, postId: args.postId));
    },
    UsersRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.UsersPage());
    },
    UserProfileRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<UserProfileRouteArgs>(
          orElse: () =>
              UserProfileRouteArgs(userId: pathParams.getInt('userId')));
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.UserProfilePage(key: args.key, userId: args.userId));
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(LoginScreen.name, path: '/'),
        _i5.RouteConfig(HomeRoute.name, path: '/', children: [
          _i5.RouteConfig(PostsRouter.name,
              path: 'posts',
              parent: HomeRoute.name,
              children: [
                _i5.RouteConfig(PostsRoute.name,
                    path: '', parent: PostsRouter.name),
                _i5.RouteConfig(SinglePostRoute.name,
                    path: ':postId', parent: PostsRouter.name)
              ]),
          _i5.RouteConfig(UsersRouter.name,
              path: 'users',
              parent: HomeRoute.name,
              children: [
                _i5.RouteConfig(UsersRoute.name,
                    path: '', parent: UsersRouter.name),
                _i5.RouteConfig(UserProfileRoute.name,
                    path: ':userId', parent: UsersRouter.name)
              ]),
          _i5.RouteConfig(SettingsRouter.name,
              path: 'settings', parent: HomeRoute.name)
        ]),
        _i5.RouteConfig(RiverPod.name, path: '/river-pod'),
        _i5.RouteConfig(BoxRoute.name, path: '/box-page')
      ];
}

/// generated route for [_i1.LoginScreen]
class LoginScreen extends _i5.PageRouteInfo<void> {
  const LoginScreen() : super(name, path: '/');

  static const String name = 'LoginScreen';
}

/// generated route for [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i3.RiverPod]
class RiverPod extends _i5.PageRouteInfo<RiverPodArgs> {
  RiverPod({_i11.Key? key})
      : super(name, path: '/river-pod', args: RiverPodArgs(key: key));

  static const String name = 'RiverPod';
}

class RiverPodArgs {
  const RiverPodArgs({this.key});

  final _i11.Key? key;
}

/// generated route for [_i4.BoxPage]
class BoxRoute extends _i5.PageRouteInfo<void> {
  const BoxRoute() : super(name, path: '/box-page');

  static const String name = 'BoxRoute';
}

/// generated route for [_i5.EmptyRouterPage]
class PostsRouter extends _i5.PageRouteInfo<void> {
  const PostsRouter({List<_i5.PageRouteInfo>? children})
      : super(name, path: 'posts', initialChildren: children);

  static const String name = 'PostsRouter';
}

/// generated route for [_i5.EmptyRouterPage]
class UsersRouter extends _i5.PageRouteInfo<void> {
  const UsersRouter({List<_i5.PageRouteInfo>? children})
      : super(name, path: 'users', initialChildren: children);

  static const String name = 'UsersRouter';
}

/// generated route for [_i6.SettingsPage]
class SettingsRouter extends _i5.PageRouteInfo<void> {
  const SettingsRouter() : super(name, path: 'settings');

  static const String name = 'SettingsRouter';
}

/// generated route for [_i7.PostsPage]
class PostsRoute extends _i5.PageRouteInfo<void> {
  const PostsRoute() : super(name, path: '');

  static const String name = 'PostsRoute';
}

/// generated route for [_i8.SinglePostPage]
class SinglePostRoute extends _i5.PageRouteInfo<SinglePostRouteArgs> {
  SinglePostRoute({_i11.Key? key, required int postId})
      : super(name,
            path: ':postId',
            args: SinglePostRouteArgs(key: key, postId: postId),
            rawPathParams: {'postId': postId});

  static const String name = 'SinglePostRoute';
}

class SinglePostRouteArgs {
  const SinglePostRouteArgs({this.key, required this.postId});

  final _i11.Key? key;

  final int postId;
}

/// generated route for [_i9.UsersPage]
class UsersRoute extends _i5.PageRouteInfo<void> {
  const UsersRoute() : super(name, path: '');

  static const String name = 'UsersRoute';
}

/// generated route for [_i10.UserProfilePage]
class UserProfileRoute extends _i5.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({_i11.Key? key, required int userId})
      : super(name,
            path: ':userId',
            args: UserProfileRouteArgs(key: key, userId: userId),
            rawPathParams: {'userId': userId});

  static const String name = 'UserProfileRoute';
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({this.key, required this.userId});

  final _i11.Key? key;

  final int userId;
}
