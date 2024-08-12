import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample/app_router/app_router.gr.dart';
import 'package:flutter_sample/features/application/bloc/application_bloc.dart';

import 'package:flutter_sample/generated/assets.gen.dart';

@RoutePage(name: 'SplashRoute')
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    context.read<ApplicationBloc>().add(ApplicationEvent.loaded());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ApplicationBloc, ApplicationState>(
      listener: (context, state) {
        if (state.isAuthenticated) {
          context.router.replace(const HomeRoute());
        } else {
          context.router.replace(const LoginRoute());
        }
      },
      child: Scaffold(
        body: Center(
          child: ClipOval(
            child: Assets.images.icon.image(),
          ),
        ),
      ),
    );
  }
}
