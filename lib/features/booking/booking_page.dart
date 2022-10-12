import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_notification_fcm/core/locator/locator.dart';
import 'package:push_notification_fcm/models/user.dart';

import '../../core/constant/spacer.dart';
import '../../widgets/app_button.dart';
import '../../widgets/circle_avatar_image.dart';
import 'bloc/booking_bloc.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final BookingBloc _bookingBloc = locator<BookingBloc>();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _phoneFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _addressFocusNode = FocusNode();

  @override
  void initState() {
    _bookingBloc.add(BookingLoaded(user: widget.user));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _bookingBloc.add(const BookingCancelAllChanged());
        return true;
      },
      child: BlocProvider.value(
        value: _bookingBloc,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          appBar: _buildAppbar(),
          body: _buildBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      shape:
          const Border(bottom: BorderSide(color: Color(0xFFF1F4F6), width: 4)),
      foregroundColor: const Color(0xFF2C333A),
      backgroundColor: const Color(0xFFFFFFFF),
      title: const Text('Your Choice'),
      centerTitle: true,
      leading: CloseButton(
        color: const Color(0xFF858F9B),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _handleCancelEdit() {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          title: const Text('Thay đổi chỉnh sửa'),
          content: const Text(
            'Bạn có chắc chắn muốn hủy bỏ chỉnh sửa thông tin này không?',
          ),
          actions: <Widget>[
            SizedBox(
              width: 110,
              child: AppButton(
                borderRadius: 6,
                title: 'Hủy',
                borderColor: const Color(0xFFE2E7ED),
                titleColor: const Color(0xFF2C333A),
                onPressed: () {
                  Navigator.pop(dialogContext);
                },
              ),
            ),
            SizedBox(
              width: 110,
              child: AppButton(
                borderRadius: 6,
                backgroundColor: const Color(0xFFEF592E),
                title: 'Confirm',
                onPressed: () {
                  Navigator.pop(dialogContext);
                  context
                      .read<BookingBloc>()
                      .add(const BookingCancelAllChanged());
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildBody() {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: BlocConsumer<BookingBloc, BookingState>(
          listener: (context, state) {
            if (state.status == BookingStatus.updateInfoSuccess) {
              Navigator.pop(context);
            } else if (state.status == BookingStatus.updateInfoFailure) {}
          },
          builder: (context, state) {
            return Stack(
              children: [
                _buildFormEditBooking(state),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.only(bottom: 16),
                    child: _buildConfirmButton(state),
                  ),
                ),
                if (state.status == BookingStatus.loading)
                  Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.white.withOpacity(0.4),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildFormEditBooking(BookingState state) {
    return SingleChildScrollView(
      reverse: true,
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom + 10,
      ),
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(height: 32),
          _buildUserAvatar(state),
          _buildInputField(
            initialValue: state.editingName ?? '',
            title: 'Họ và tên',
            hintText: 'Nhập họ và tên',
            enable: true,
            focusNode: _nameFocusNode,
            nextFocusNode: _phoneFocusNode,
            onValueChanged: (String value) {
              _bookingBloc.add(BookingNameChanged(value));
            },
            errorMessage: state.nameError,
          ),
          verticalSpace16,
          _buildInputField(
            initialValue: state.editingPhone ?? '',
            title: 'Số điện thoại',
            hintText: 'Nhập số điện thoại',
            enable: true,
            textInputType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.allow(
                RegExp(
                  '[0-9 ]+',
                ),
              ),
            ],
            focusNode: _phoneFocusNode,
            nextFocusNode: _emailFocusNode,
            onValueChanged: (String value) {
              _bookingBloc.add(BookingPhoneChanged(value));
            },
            errorMessage: state.phoneError,
          ),
          verticalSpace16,
          _buildInputField(
            initialValue: state.editingEmail ?? '',
            title: 'Email',
            hintText: 'Nhập email',
            enable: true,
            focusNode: _emailFocusNode,
            nextFocusNode: _addressFocusNode,
            onValueChanged: (String value) {
              _bookingBloc.add(BookingEmailChanged(value));
            },
            errorMessage: state.emailError,
          ),
          verticalSpace16,
          _buildInputField(
            initialValue: state.editingAddress ?? '',
            title: 'Địa chỉ',
            hintText: 'Nhập địa chỉ',
            enable: true,
            textInputAction: TextInputAction.done,
            focusNode: _addressFocusNode,
            onValueChanged: (String value) {
              _bookingBloc.add(BookingAddressChanged(value));
            },
            errorMessage: state.addressError,
          ),
          const SizedBox(height: 68),
        ],
      ),
    );
  }

  Widget _buildConfirmButton(BookingState state) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: AppButton(
        onPressed: () {
          _handleSaveBooking(state);
        },
        title: 'Confirm',
        backgroundColor: Theme.of(context).primaryColor,
        titleColor: Colors.white,
        borderColor: Theme.of(context).primaryColor,
      ),
    );
  }

  void _handleSaveBooking(BookingState state) {
    FocusScope.of(context).unfocus();
    // _BookingBloc.add(BookingSaveButtonPressed(
    //       name: state.editingName ?? state.user.name ?? '',
    //       phoneNumber: state.editingPhone ?? state.user.phoneNumber ?? '',
    //       email: state.editingEmail ?? state.user.email ?? '',
    //       address: state.editingAddress ?? state.user.address ?? '',
    //       imagePath: state.editingImage ?? '',
    //     ));
  }

  Widget _buildInputField({
    String? initialValue,
    required String title,
    required String hintText,
    TextEditingController? controller,
    required bool enable,
    required FocusNode focusNode,
    FocusNode? nextFocusNode,
    required ValueChanged<String> onValueChanged,
    TextStyle? style,
    Widget? prefixIcon,
    List<TextInputFormatter>? inputFormatters,
    required String? errorMessage,
    TextInputType textInputType = TextInputType.multiline,
    TextInputAction textInputAction = TextInputAction.next,
  }) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(color: Color(0xFF5A6271)),
          ),
          verticalSpace8,
          TextFormField(
            initialValue: initialValue,
            keyboardType: textInputType,
            focusNode: focusNode,
            enabled: enable,
            textAlign: TextAlign.start,
            textInputAction: textInputAction,
            controller: controller,
            maxLines: null,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Color(0xff929DAA),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              errorMaxLines: 2,
              errorStyle: const TextStyle(color: Colors.redAccent),
              isDense: true,
              contentPadding: const EdgeInsets.all(10),
              enabledBorder: errorMessage != null
                  ? const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                    )
                  : const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE2E7ED),
                      ),
                    ),
              focusedBorder: errorMessage != null
                  ? const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                    )
                  : const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff3777F3),
                      ),
                    ),
            ),
            style: style ??
                const TextStyle(
                  color: Color(0xFF2C333A),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
            onFieldSubmitted: (v) {
              nextFocusNode != null
                  ? nextFocusNode.requestFocus()
                  : FocusScope.of(context).unfocus();
            },
            onTap: () {
              focusNode.requestFocus();
            },
            onChanged: (change) {
              onValueChanged(change);
            },
          ),
          if (errorMessage != null)
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.error,
                    color: Color(0xFFFF4E61),
                    size: 14,
                  ),
                  horizontalSpace4,
                  Flexible(
                    child: Text(
                      errorMessage,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFF4E61),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildUserAvatar(BookingState state) {
    return CircleAvatarImage(
      size: 120,
      avatar: state.user.imagePath,
      name: state.user.title ?? '',
      style: const TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.w600,
        fontSize: 30,
      ),
    );
  }
}
