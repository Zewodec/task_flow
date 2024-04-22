import 'package:flutter/material.dart';
import 'package:task_flow/features/home_screen/presentation/pages/tabs/profile_tab.dart';

import '../features/user_settings/presentation/pages/changing_avatar_page.dart';

class UpdatesNavigator extends StatefulWidget {
  const UpdatesNavigator({super.key});

  @override
  State<UpdatesNavigator> createState() => _UpdatesNavigatorState();
}

GlobalKey<NavigatorState> updatesNavigatorKey = GlobalKey<NavigatorState>();

class _UpdatesNavigatorState extends State<UpdatesNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: updatesNavigatorKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            if (settings.name == '/settings/change_avatar') {
              return const ChangingAvatarPage();
            }
            return const ProfileTab();
          },
        );
      },
    );
  }
}
