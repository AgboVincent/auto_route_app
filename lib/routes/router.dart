import 'package:auto_route/auto_route.dart';
import 'package:auto_route_app/home/home_page.dart';
import 'package:auto_route_app/posts/posts.dart';
import 'package:auto_route_app/home/settings.dart';
import 'package:auto_route_app/posts/single_post.dart';
import 'package:auto_route_app/riverpod/riverpod_learn.dart';
import 'package:auto_route_app/user/user_profile.dart';
import 'package:auto_route_app/user/users_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: [
  AutoRoute(path: '/', page: HomePage, children: [
    AutoRoute(
      path: 'posts',
      name: 'PostsRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(
          path: '',
          page: PostsPage,
        ),
        AutoRoute(
          path: ':postId',
          page: SinglePostPage,
        )
      ],
    ),
    AutoRoute(
      path: 'users',
      name: 'UsersRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(
          path: '',
          page: UsersPage,
        ),
        AutoRoute(
          path: ':userId',
          page: UserProfilePage,
        ),
      ]
    ),
    AutoRoute(
      path: 'settings',
      name: 'SettingsRouter',
      page: SettingsPage,
    )
  ]),
  AutoRoute(
    page: RiverPod
  )
])
class $AppRouter {}
