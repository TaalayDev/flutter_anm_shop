import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:malbazar/data/constants.dart';
import 'package:malbazar/imports.dart';
import 'package:malbazar/ui/screens/profile/profile_screen.dart';
import 'package:malbazar/ui/screens/settings/settings_screen.dart';

import '../../../../bloc/user_bloc.dart';
import '../../../../data/models/user.dart';
import '../../about/about_screen.dart';
import '../../auth/firebase_auth_screen.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    Key? key,
    this.onClose,
  }) : super(key: key);

  final Function()? onClose;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                DrawerHeader(
                  child: Image.asset(Assets.logo),
                ),
                MenuTile(
                  onTap: () {
                    onClose?.call();
                  },
                  icon: Feather.home,
                  title: 'home'.tr(),
                  isSelected: true,
                ),
                MenuTile(
                  onTap: () async {
                    onClose?.call();
                    final userBloc = context.read<UserBloc>();
                    final navigator = Navigator.of(context);
                    if (!userBloc.state.isLogin) {
                      final result = await navigator.push(
                        MaterialPageRoute(
                          builder: (context) => FirebaseAuthScreen(),
                        ),
                      );
                      if (result == null) return;
                      userBloc
                          .add(UserLoginEvent(User.fromFirebaseUser(result)));
                    }

                    navigator.push(
                      MaterialPageRoute(builder: (_) => ProfileScreen()),
                    );
                  },
                  icon: Feather.user,
                  title: 'profile'.tr(),
                ),
                MenuTile(
                  onTap: () {
                    onClose?.call();
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => SettingsScreen()),
                    );
                  },
                  icon: Feather.settings,
                  title: 'settings'.tr(),
                ),
                MenuTile(
                  onTap: () {
                    onClose?.call();
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => AboutScreen()),
                    );
                  },
                  icon: Feather.info,
                  title: 'about_us'.tr(),
                ),
              ],
            ),
          ),
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (!state.isLogin) return const SizedBox();

              return Column(
                children: [
                  const Divider(height: 1),
                  ListTile(
                    onTap: () {
                      onClose?.call();
                      context.read<UserBloc>().add(UserLogoutEvent());
                    },
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 30,
                    ),
                    leading: const Icon(
                      FontAwesome.sign_out,
                      color: Colors.redAccent,
                    ),
                    title: const Text('Выйти из аккаунта'),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  const MenuTile({
    Key? key,
    required this.icon,
    required this.title,
    this.isSelected = false,
    this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final bool isSelected;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 8,
      ),
      leading: Icon(
        icon,
        size: 22,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      tileColor:
          isSelected ? context.appTheme.greyWeakColor.withOpacity(0.3) : null,
    );
  }
}
