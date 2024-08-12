import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample/common/helpers/locale_extension.dart';
import 'package:flutter_sample/features/application/bloc/application_bloc.dart';

import 'package:flutter_sample/common/constant/spacer.dart';
import 'package:flutter_sample/generated/l10n.dart';
import 'package:flutter_sample/models/setting/setting.dart';

@RoutePage(name: 'SettingRoute')
class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  void initState() {
    super.initState();
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
      title: Text(S.of(context).settings),
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
        _SettingsItem(
          setting: Setting(
            title: S.of(context).language,
            content: Localizations.localeOf(context).languageCode.localeName,
            onPressed: () {
              final List<Locale> locales = S.delegate.supportedLocales.toList();
              locales.sort((a, b) => b.languageCode.compareTo(a.languageCode));
              showModalBottomSheet<void>(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                builder: (BuildContext context) {
                  return _buildLanguageSelectBottomSheet(context, locales);
                },
              );
            },
          ),
        ),
        BlocBuilder<ApplicationBloc, ApplicationState>(
          buildWhen: (previous, current) =>
              previous.isDarkMode != current.isDarkMode,
          builder: (context, state) {
            return _SwitchItem(
              initValue: state.isDarkMode,
              title: 'Dark mode',
              onChanged: (bool value) {
                context.read<ApplicationBloc>().add(
                      ApplicationEvent.themeChanged(isDarkMode: value),
                    );
              },
            );
          },
        ),
      ],
    );
  }

  ///Ui choose languages
  Widget _buildLanguageSelectBottomSheet(
    BuildContext context,
    List<Locale> locales,
  ) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 60, top: 0),
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              const _AppBarBottomSheet(),
              ...locales
                  .map(
                    (locale) => _LocalItem(
                      locale: locale,
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}

class _AppBarBottomSheet extends StatelessWidget {
  const _AppBarBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          context.router.maybePop();
        },
      ),
      title: Text(S.of(context).chooseLanguage),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
    );
  }
}

class _LocalItem extends StatelessWidget {
  const _LocalItem({
    Key? key,
    required this.locale,
  }) : super(key: key);

  final Locale locale;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationBloc, ApplicationState>(
      buildWhen: (previous, current) => previous.locale != current.locale,
      builder: (context, state) {
        return Ink(
          child: ListTile(
            shape: const Border(
              bottom: BorderSide(color: Color(0xFFF0F1F3), width: 1),
            ),
            onTap: () async {
              context.read<ApplicationBloc>().add(
                    ApplicationEvent.localeChanged(locale: locale.languageCode),
                  );
              context.router.maybePop();
            },
            leading: locale.languageCode.localeIcon,
            trailing: Localizations.localeOf(context).languageCode ==
                    locale.languageCode
                ? const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  )
                : null,
            title: Text(
              locale.languageCode.localeName,
            ),
          ),
        );
      },
    );
  }
}

class _SettingsItem extends StatelessWidget {
  const _SettingsItem({Key? key, required this.setting}) : super(key: key);

  final Setting setting;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xFFF0F1F3),
              width: 1,
            ),
          ),
        ),
        height: 56,
        child: Ink(
          child: InkWell(
            onTap: setting.onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  setting.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                buildNavigateButton(setting.content, context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNavigateButton(String message, BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.ideographic,
      children: [
        Text(
          setting.content,
        ),
        horizontalSpace4,
        const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 12,
        ),
      ],
    );
  }
}

class _SwitchItem extends StatelessWidget {
  const _SwitchItem({
    Key? key,
    required this.initValue,
    required this.title,
    required this.onChanged,
  }) : super(key: key);

  final bool initValue;
  final String title;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SwitchListTile.adaptive(
        activeColor: Theme.of(context).primaryColor,
        contentPadding: EdgeInsets.zero,
        shape: const Border(
          bottom: BorderSide(color: Color(0xFFF0F1F3), width: 1),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
        ),
        value: initValue,
        onChanged: onChanged,
      ),
    );
  }
}
