import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:push_notification_fcm/features/home/bloc/home_bloc.dart';

import '../../app_router/app_router.dart';

class DiscoveryPage extends StatelessWidget {
  const DiscoveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 10,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: MasonryGridView.count(
                  physics: const ClampingScrollPhysics(),
                  itemCount: state.users.length,
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  itemBuilder: (context, index) {
                    final user = state.users[index];
                    final id = user.id!;
                    return RawMaterialButton(
                      onPressed: () {
                        context.router.push(MediaDetailRoute(
                          id: id,
                          heroTag: 'grid[$id]',
                        ));
                      },
                      child: Hero(
                        tag: 'grid[$id]',
                        child: _ImageViewer(
                          url: user.imagePath ?? '',
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

class _ImageViewer extends StatelessWidget {
  const _ImageViewer({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: Image.network(
        url,
        fit: BoxFit.cover,
        errorBuilder: (context, object, stack) {
          return Image.asset(
            'assets/images/no_image.png',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
