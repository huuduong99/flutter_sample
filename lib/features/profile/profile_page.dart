import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_notification_fcm/features/application/bloc/application_bloc.dart';
import 'package:push_notification_fcm/widgets/app_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppButton(
              title: 'Logout',
              titleColor: Colors.black54,
              onPressed: () {
                context
                    .read<ApplicationBloc>()
                    .add(ApplicationEvent.logoutRequested());
              },
            )
          ],
        ),
      ),
    );
  }
}
