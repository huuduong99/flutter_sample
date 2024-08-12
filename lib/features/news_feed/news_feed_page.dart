import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample/app_router/app_router.gr.dart';
import 'package:flutter_sample/features/application/bloc/application_bloc.dart';
import 'package:flutter_sample/features/home/bloc/home_bloc.dart';

import 'package:flutter_sample/common/constant/spacer.dart';
import 'package:flutter_sample/models/user/user.dart';
import 'package:flutter_sample/widgets/circle_avatar_image.dart';

@RoutePage(name: 'NewsFeedRoute')
class NewsFeedPage extends StatefulWidget {
  const NewsFeedPage({Key? key}) : super(key: key);

  @override
  State<NewsFeedPage> createState() => _NewsFeedPageState();
}

class _NewsFeedPageState extends State<NewsFeedPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Column(
            children: [
              const _Header(),
              Expanded(
                child: ListView.builder(
                  itemCount: state.users.length,
                  itemBuilder: (context, index) {
                    final user = state.users[index];
                    final id = user.id!;
                    return _UserCardItem(
                      user: user,
                      onPressed: () {
                        context.router.push(
                          MediaDetailRoute(
                            id: id,
                            heroTag: 'list[$id]',
                          ),
                        );
                      },
                      id: id,
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationBloc, ApplicationState>(
      buildWhen: (prev, current) => prev.user != current.user,
      builder: (context, state) {
        return ListTile(
          leading: CircleAvatarImage(
            size: 56,
            avatar: state.user.imagePath ?? '',
            name: state.user.name ?? '',
          ),
          title: Text(
            state.user.name ?? '',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          subtitle: const Text(
            'Thành viên VIP của Booking App',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        );
      },
    );
  }
}

class _UserCardItem extends StatelessWidget {
  const _UserCardItem({
    Key? key,
    required this.user,
    required this.onPressed,
    required this.id,
  }) : super(key: key);

  final User user;
  final VoidCallback onPressed;
  final int id;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Hero(
        tag: 'list[$id]',
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Row(
              children: [
                CircleAvatarImage(
                  avatar: user.imagePath,
                  size: 50,
                ),
                horizontalSpace12,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      user.name ?? '',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    verticalSpace4,
                    Text(
                      user.price ?? '',
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey.shade900),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
