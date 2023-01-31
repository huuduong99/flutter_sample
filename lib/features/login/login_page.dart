import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_notification_fcm/app_router/app_router.dart';
import 'package:push_notification_fcm/features/login/bloc/login_bloc.dart';
import 'package:push_notification_fcm/injector/locator.dart';
import 'package:push_notification_fcm/widgets/loading_indicator.dart';
import 'package:push_notification_fcm/widgets/user_info_input.dart';

import '../../common/constant/spacer.dart';
import '../../gen/assets.gen.dart';
import '../../widgets/app_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final LoginBloc _loginBloc;

  @override
  void initState() {
    super.initState();
    _loginBloc = locator<LoginBloc>();
  }

  @override
  void dispose() {
    super.dispose();
    _loginBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>.value(
      value: _loginBloc,
      child: BlocListener<LoginBloc, LoginState>(
        listenWhen: (prev, current) => prev.loginHandle != current.loginHandle,
        listener: (context, state) {
          state.loginHandle?.when(
            loginSuccess: () {
              context.router.replace(const HomeRoute());
            },
            loginFailure: (message) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(content: Text(message)));
            },
          );
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Login"),
          ),
          body: const _Body(),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return SizedBox(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                verticalSpace64,
                _Email(),
                verticalSpace16,
                _Password(),
              ],
            ),
            const Align(
              alignment: Alignment.center,
              child: SafeArea(
                child: _LoginButton(),
              ),
            ),
            if (state.isBusy)
              LoadingIndicator(
                backgroundColor: Colors.white.withOpacity(0.4),
              ),
          ],
        ),
      );
    });
  }
}

class _Email extends StatelessWidget {
  const _Email({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return UserInfoInput(
          initialValue: state.email,
          title: 'Email',
          hintText: 'Nhập email',
          enable: true,
          requiredEnterField: false,
          onValueChanged: (String email) {
            context.read<LoginBloc>().add(
                  LoginEvent.emailChanged(
                    email: email,
                  ),
                );
          },
          prefixIcon: Stack(
            alignment: Alignment.center,
            children: [
              Assets.icons.email.svg(),
            ],
          ),
          errorMessage: state.errorEmail,
        );
      },
    );
  }
}

class _Password extends StatelessWidget {
  const _Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return UserInfoInput(
          obscureText: true,
          initialValue: state.password,
          title: 'Password',
          hintText: 'Nhập password',
          enable: true,
          requiredEnterField: false,
          onValueChanged: (String password) {
            context.read<LoginBloc>().add(
                  LoginEvent.passwordChanged(
                    password: password,
                  ),
                );
          },
          prefixIcon: Stack(
            alignment: Alignment.center,
            children: [
              Assets.icons.password.svg(),
            ],
          ),
          errorMessage: state.errorPassword,
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.infinity,
            height: 42,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AppButton(
                borderRadius: 8,
                title: 'Login',
                titleColor: const Color(0xFFFFFFFF),
                backgroundColor: Theme.of(context).primaryColor,
                borderColor: Theme.of(context).primaryColor,
                onPressed: () async {
                  FocusScope.of(context).unfocus();
                  context.read<LoginBloc>().add(
                        LoginEvent.loginButtonPressed(
                          email: state.email,
                          password: state.password,
                        ),
                      );
                },
              ),
            ),
          ),
        ],
      );
    });
  }
}
