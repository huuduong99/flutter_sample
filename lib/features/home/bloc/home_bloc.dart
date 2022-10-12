import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:push_notification_fcm/core/navigation/app_route.dart';
import 'package:push_notification_fcm/core/navigation/arguments/argument.dart';
import 'package:push_notification_fcm/models/app_notification.dart';
import 'package:push_notification_fcm/models/user.dart';
import 'package:collection/collection.dart';
import 'package:push_notification_fcm/services/dialog_service/dialog_service.dart';
import 'package:rxdart/rxdart.dart';

import '../../../background_notification.dart';
import '../../../core/logging/logging_wrapper.dart';

import '../../../services/fcm/fcm_service.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required FcmService fcmService,
    required DialogService dialogService,
  }) : super(const HomeState()) {
    _fcmService = fcmService;
    _dialogService = dialogService;

    final notificationOnMessageTapped =
    BackgroundNotification.listenOnNotificationTapped.listen(
          (data) {
        _handleNotifyMessage(data);
      },
    );
    _notificationStreamSubscription.add(notificationOnMessageTapped);

    on<HomeLoaded>(_onHomeLoaded);
    on<HomeHandleWithInitialFcmPayload>(_onHandleWithInitialFcmPayload);
  }

  late final FcmService _fcmService;
  late final DialogService _dialogService;

  /// Add StreamSubscription to this param to dispose when bloc is closed.
  final CompositeSubscription _notificationStreamSubscription =
      CompositeSubscription();
  final _logger = getLogger('HomeBloc');

  final List<User> _users = const [
    User(
      imagePath:
          'https://image.phunuonline.com.vn/news/2018/20180120/fckimage/120976_co-gai-viet-3-191526234.jpg',
      price: '\$20.00',
      photographer: 'Huu Duong',
      title: 'New Year',
      details:
          'This image was taken during a party in New York on new years eve. Quite a colorful shot.',
      id: 1,
    ),
    User(
      imagePath:
          'https://sohanews.sohacdn.com/160588918557773824/2020/8/26/photo-3-1598425098341666827590.jpg',
      price: '\$10.00',
      photographer: 'Huu Duong',
      title: 'Spring',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 2,
    ),
    User(
      imagePath:
          'https://znews-photo.zingcdn.me/w660/Uploaded/mdf_drkydd/2018_05_01/1_1.jpg',
      price: '\$30.00',
      photographer: 'Huu Duong',
      title: 'Casual Look',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 3,
    ),
    User(
      imagePath:
          'https://img2.thuthuatphanmem.vn/uploads/2018/12/25/anh-dep-gai-xinh-nhu-bup-be_012857530.jpg',
      price: '\$20.00',
      photographer: 'Huu Duong',
      title: 'New York',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 4,
    ),
    User(
      imagePath:
          'https://thumb.emdep.vn/unsafe/450x0/quanlytin.emdep.vn/Share/Image/2021/08/12/co-gai-2-130103879.jpg',
      price: '\$20.00',
      photographer: 'Huu Duong',
      title: 'New York',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 5,
    ),
    User(
      imagePath:
          'https://goldmetal.vn/images/2020/02/cung-cap-nguoi-mau-nhi-chuyen-nghiep-tai-ha-noi-1581919516-2688941.jpg',
      price: '\$20.00',
      photographer: 'Huu Duong',
      title: 'New York',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 6,
    ),
    User(
      imagePath:
          'https://vnn-imgs-f.vgcloud.vn/2019/06/10/18/choang-ngop-ve-dep-cua-co-gai-nuoc-ngoai-ben-sen-ho-tay-11.jpg',
      price: '\$20.00',
      photographer: 'Huu Duong',
      title: 'New York',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 7,
    ),
    User(
      imagePath:
          'https://image-us.24h.com.vn/upload/1-2021/images/2021-01-10/2-1610272413-464-width650height650.jpg',
      price: '\$20.00',
      photographer: 'Huu Duong',
      title: 'New York',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 8,
    ),
    User(
      imagePath:
          'https://media.doanhnghiepvn.vn/Images/Uploaded/Share/2019/09/02/dan-mang-ban-loan-vi-co-gai-toc-vang-dep-nhu-thien-than-1.jpg',
      price: '\$20.00',
      photographer: 'Huu Duong',
      title: 'New York',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 9,
    ),
    User(
      imagePath:
          'https://sohanews.sohacdn.com/160588918557773824/2020/8/26/photo-4-1598425098848545618064.jpg',
      price: '\$20.00',
      photographer: 'Huu Duong',
      title: 'New York',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 10,
    ),
    User(
      imagePath:
          'https://allimages.sgp1.digitaloceanspaces.com/photographercomvn/2020/08/1598204201_827_Ngam-Anh-Girl-xinh-Au-My-dep-tua-thien-than.jpg',
      price: '\$20.00',
      photographer: 'Huu Duong',
      title: 'New York',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 11,
    ),
    User(
      imagePath:
          'https://gamek.mediacdn.vn/133514250583805952/2020/2/3/photo-1-15807033191681253458203.jpg',
      price: '\$20.00',
      photographer: 'Huu Duong',
      title: 'New York',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 12,
    ),
    User(
      imagePath:
          'https://static2.yan.vn/YanNews/2167221/202007/dan-gai-xinh-viet-duoc-len-bao-nuoc-ngoai-vi-qua-xinh-dep-80d8b498.jpg',
      price: '\$20.00',
      photographer: 'Huu Duong',
      title: 'New York',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 13,
    ),
    User(
      imagePath:
          'https://genk.mediacdn.vn/2020/1/7/photo-1-15783682257621036671779.jpg',
      price: '\$20.00',
      photographer: 'Matthew',
      title: 'Cone Ice Cream',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 14,
    ),
    User(
      imagePath:
          'https://img.docbao.vn/images/uploads/2020/08/26/103625243151178839858606252044032823402131n-1598416210451412454693.jpg',
      price: '\$25.00',
      photographer: 'Martin Sawyer',
      title: 'Pink Ice Cream',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 15,
    ),
    User(
      imagePath:
          'https://static.tintuc.com.vn/images/ver3/2020/08/26/1598435161210-1598426412650-924758736439169097356488215107167873135112n-15984163027701220052989.jpg',
      price: '\$15.00',
      photographer: 'John Doe',
      title: 'Strawberry Ice Cream',
      details:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
      id: 16,
    ),
  ];

  FutureOr<void> _onHomeLoaded(
    HomeLoaded event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(users: _users, status: HomeStatus.loading),
    );

    try {
      await Future.delayed(const Duration(seconds: 2));
      emit(
        state.copyWith(users: _users, status: HomeStatus.loadSuccess),
      );
    } catch (e, s) {
      emit(
        state.copyWith(
            errorMessage: e.toString(), status: HomeStatus.loadFailure),
      );
      _logger.e('_onHomeLoadedFailure', e.toString(), s);
    }
  }

  FutureOr<void> _onHandleWithInitialFcmPayload(
    HomeHandleWithInitialFcmPayload event,
    Emitter<HomeState> emit,
  ) async {
    final String? payload = await _fcmService.getInitialFcmPayload();

    if (payload == null) {
      return;
    }
    _handleNotifyMessage(payload);
  }

  Future<void> _handleNotifyMessage(String data) async {
    final payload = jsonDecode(data);

    final AppNotification appNotification = AppNotification.fromJson(payload);

    final User? user =
        _users.firstWhereOrNull((user) => user.id == appNotification.userId);

    if (user != null) {
      _dialogService.pushNamed(
          AppRoute.mediaDetail, MediaDetailArgs(user: user));
    }
  }

  @override
  Future<void> close() {
    _notificationStreamSubscription.dispose();
    return super.close();
  }
}
