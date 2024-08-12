import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample/app_router/app_router.gr.dart';
import 'package:flutter_sample/features/media_detail/bloc/media_detail_bloc.dart';
import 'package:flutter_sample/injector/app_injector.dart';

import 'package:flutter_sample/generated/l10n.dart';
import 'package:flutter_sample/models/user/user.dart';
import 'package:flutter_sample/widgets/app_button.dart';
import 'package:flutter_sample/widgets/image_viewer.dart';

@RoutePage(name: 'MediaDetailRoute')
class MediaDetailPage extends StatefulWidget {
  const MediaDetailPage({
    Key? key,
    required this.id,
    required this.heroTag,
  }) : super(key: key);

  final int id;
  final String heroTag;

  @override
  State<MediaDetailPage> createState() => _MediaDetailPageState();
}

class _MediaDetailPageState extends State<MediaDetailPage> {
  late final MediaDetailBloc _mediaDetailBloc;

  @override
  void initState() {
    _mediaDetailBloc = AppInjector.get<MediaDetailBloc>()
      ..add(
        MediaDetailEvent.loaded(
          id: widget.id,
          heroTag: widget.heroTag,
        ),
      );
    super.initState();
  }

  @override
  dispose() {
    _mediaDetailBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MediaDetailBloc>.value(
      value: _mediaDetailBloc,
      child: const Scaffold(
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MediaDetailBloc, MediaDetailState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        if (state.status == MediaDetailStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        return const _ModelInfo();
      },
    );
  }
}

class _ModelInfo extends StatelessWidget {
  const _ModelInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User user = context.select((MediaDetailBloc bloc) => bloc.state.user);
    final String heroTag =
        context.select((MediaDetailBloc bloc) => bloc.state.heroTag);

    return Column(
      children: <Widget>[
        Expanded(
          child: Hero(
            tag: heroTag,
            child: Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: ImageViewer(
                    url: user.imagePath ?? '',
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                AppBar(
                  backgroundColor: Colors.transparent,
                  leading: const BackButton(),
                ),
              ],
            ),
          ),
        ),
        SafeArea(
          child: SizedBox(
            height: 260,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        user.name ?? '',
                        style: const TextStyle(
                          color: Colors.redAccent,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'By ${user.photographer}',
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        user.price ?? '',
                        style: const TextStyle(
                          color: Colors.redAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        user.details ?? '',
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: AppButton(
                      onPressed: () {
                        context.router.push(BookingRoute(modelId: user.id!));
                      },
                      title: S.current.booking,
                      backgroundColor: Theme.of(context).primaryColor,
                      titleColor: Colors.white,
                      borderColor: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
