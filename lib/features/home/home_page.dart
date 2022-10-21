import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:push_notification_fcm/core/constant/spacer.dart';
import 'package:push_notification_fcm/core/locator/locator.dart';
import 'package:push_notification_fcm/core/navigation/app_route.dart';
import 'package:push_notification_fcm/features/home/bloc/home_bloc.dart';
import 'package:push_notification_fcm/widgets/circle_avatar_image.dart';

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
        backgroundColor: const Color(0xFFF1F4F6),
        // appBar: _buildAppbar(),
        body: _buildBody(),
        bottomNavigationBar: _buildOriginDesign(),
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
          return IndexedStack(
            index: _homeBloc.state.tabIndex,
            children: [
              _home(state),
              _discovery(state),
              const SizedBox(
                child: Center(
                  child: Text('Profile'),
                ),
              ),
            ],
          );
        },
        listener: (context, state) {});
  }

  Widget _home(HomeState state) {
    return ListView.builder(
        itemCount: state.users.length,
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
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
          );
        });
  }

  Widget _discovery(HomeState state) {
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
  }

  Widget _buildOriginDesign() {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: Theme.of(context).primaryColor,
        strokeColor: Theme.of(context).primaryColor,
        unSelectedColor: Colors.grey[600],
        backgroundColor: Colors.white,
        borderRadius: const Radius.circular(20.0),
        blurEffect: false,
        scaleCurve: Curves.linear,
        items: [
          CustomNavigationBarItem(
            icon: const Icon(Icons.home),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.travel_explore),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.account_circle),
          ),
        ],
        isFloating: true,
        currentIndex: state.tabIndex,
        onTap: (index) {
          _homeBloc.add(HomeTabIndexChanged(index: index));
        },
      );
    });
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
