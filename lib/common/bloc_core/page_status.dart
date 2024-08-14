// ignore_for_file: always_put_required_named_parameters_first

import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_status.freezed.dart';

/// Trạng thái load dữ liệu của giao diện
@Freezed(fromJson: false, toJson: false)
class PageStatus with _$PageStatus {
  const factory PageStatus.initial() = _Initial;

  /// Đang load
  const factory PageStatus.loading() = _Loading;

  /// Load thành công
  const factory PageStatus.loadSuccess() = _LoadSuccess;

  /// Load thất bại,
  const factory PageStatus.loadFailed() = _LoadFailed;
}

extension PageStatusExtension on PageStatus {
  bool get hideAction =>
      (this is _Initial) || (this is _Loading) || (this is _LoadFailed);

  bool get isLoadFailed => this is _LoadFailed;

  bool get isLoadSuccess => this is _LoadSuccess;

  bool get isLoading => this is _Loading;

  bool get isInitial => this is _Initial;
}
