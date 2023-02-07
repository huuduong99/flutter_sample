import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample/features/application/bloc/application_bloc.dart';
import 'package:flutter_sample/generated/assets.gen.dart';
import 'package:flutter_sample/widgets/app_button.dart';

import '../../app_router/routes.dart';
import '../../common/constant/spacer.dart';
import '../../generated/l10n.dart';
import '../../widgets/border_circle_avatar_image.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: _AppBar(),
      body: _Body(),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const SizedBox(),
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                _UserPanel(),
                _UserInfo(),
                verticalSpace12,
                _UserCard(),
                verticalSpace12,
                _SettingsCard(),
              ],
            ),
          ),
        ),
        const _LogoutButton(),
      ],
    );
  }
}

class _UserPanel extends StatelessWidget {
  const _UserPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationBloc, ApplicationState>(
      buildWhen: (prev, current) =>
          prev.user != current.user || prev.isDarkMode != current.isDarkMode,
      builder: (context, state) {
        final user = state.user;
        final isDarkMode = state.isDarkMode;
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.55, 0.45],
              colors: [
                Theme.of(context).primaryColor,
                isDarkMode ? Colors.black12 : Colors.white
              ],
            ),
          ),
          alignment: Alignment.center,
          child: BorderCircleAvatarImage(
            size: 120,
            avatar: user.imagePath ?? '',
            borderSide: 4,
            name: user.name ?? '',
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w600,
              fontSize: 30,
            ),
          ),
        );
      },
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationBloc, ApplicationState>(
      buildWhen: (prev, current) => prev.user != current.user,
      builder: (context, state) {
        final user = state.user;
        return Column(
          children: [
            Text(
              user.name ?? '',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
            ),
            verticalSpace4,
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '${S.of(context).memberVipOf} ',
                    style: const TextStyle(fontSize: 14),
                  ),
                  TextSpan(
                    text: 'Booking App',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _UserCard extends StatelessWidget {
  const _UserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _MenuItem(
      title: S.of(context).userInfo,
      onPressed: () {},
      icon: Assets.icons.userIcon.svg(),
      content: S.of(context).userInfoDescription,
    );
  }
}

class _SettingsCard extends StatelessWidget {
  const _SettingsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _MenuItem(
      title: S.of(context).settings,
      onPressed: () {
        context.router.pushNamed(Routes.settings);
      },
      icon: Assets.icons.icSetting.svg(),
      content: S.of(context).settingsDescription,
    );
  }
}

class _LogoutButton extends StatelessWidget {
  const _LogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: AppButton(
          backgroundColor: Theme.of(context).primaryColor,
          borderColor: Theme.of(context).primaryColor,
          title: S.of(context).logout,
          onPressed: () {
            context
                .read<ApplicationBloc>()
                .add(ApplicationEvent.logoutRequested());
          },
        ),
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  const _MenuItem({
    Key? key,
    required this.title,
    required this.content,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final String content;
  final Widget icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 1),
              blurRadius: 10,
              spreadRadius: 0,
              color: const Color(0xFF582300).withOpacity(0.05)),
          BoxShadow(
              offset: const Offset(0, 2),
              blurRadius: 4,
              spreadRadius: 0,
              color: const Color(0xFF582300).withOpacity(0.02)),
        ],
      ),
      child: ListTile(
        leading: icon,
        title: Text(
          title,
          style: const TextStyle(
            color: Color(0xFF424752),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          content,
          style: const TextStyle(
            color: Color(0xFF929DAA),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: Assets.icons.keyboardRight.svg(),
        onTap: onPressed,
      ),
    );
  }
}
