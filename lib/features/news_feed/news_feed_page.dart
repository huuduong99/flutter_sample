import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_notification_fcm/app_router/app_router.dart';
import 'package:push_notification_fcm/features/home/bloc/home_bloc.dart';

import '../../common/constant/spacer.dart';
import '../../widgets/circle_avatar_image.dart';

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
        return ListView.builder(
          itemCount: state.users.length,
          itemBuilder: (context, index) {
            final user = state.users[index];
            final id = user.id!;
            return RawMaterialButton(
              onPressed: () {
                context.router.push(MediaDetailRoute(
                  id: user.id!,
                  heroTag: 'list[$id]',
                ));
              },
              child: Hero(
                tag: 'list[$id]',
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(0.4),
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
                              user.title ?? '',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            verticalSpace4,
                            Text(
                              user.price ?? '',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey.shade900),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
