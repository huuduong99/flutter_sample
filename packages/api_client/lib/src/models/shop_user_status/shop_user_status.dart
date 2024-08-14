import 'package:json_annotation/json_annotation.dart';

/// Trạng thái của nhân viên
@JsonEnum(valueField: 'status')
enum ShopUserStatus {
  /// Chờ xác nhận
  waitForConfirm(1),

  /// Từ chối
  refuse(2),

  /// Đang làm việc
  working(3),

  /// Ngưng làm việc
  stopWorking(4),

  /// Đã hủy
  cancelled(5);

  const ShopUserStatus(this.status);

  ///
  final int status;

  ///
  int toJson() => status;

  ///
  static ShopUserStatus fromValue(int status) =>
      ShopUserStatus.values.singleWhere((i) => status == i.status);
}
