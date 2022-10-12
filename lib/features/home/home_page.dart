import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:push_notification_fcm/core/locator/locator.dart';
import 'package:push_notification_fcm/core/navigation/app_route.dart';
import 'package:push_notification_fcm/features/home/bloc/home_bloc.dart';

import '../../core/navigation/arguments/argument.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeBloc _homeBloc = locator<HomeBloc>();

  @override
  void initState() {
    _homeBloc.add(const HomeLoaded());
    _homeBloc.add(const HomeHandleWithInitialFcmPayload());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>.value(
      value: _homeBloc,
      child: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: _buildAppbar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.redAccent,
      title: const Text(
        'Gallery',
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
      ),
      centerTitle: true,
      elevation: 0,
    );
  }

  Widget _buildBody() {
    return BlocConsumer<HomeBloc, HomeState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
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
                      return RawMaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            AppRoute.mediaDetail,
                            arguments: MediaDetailArgs(user: user),
                          );
                        },
                        child: Hero(
                          tag: 'logo${user.id}',
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
        listener: (context, state) {});
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
