import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_sample/common/constant/spacer.dart';
import 'package:flutter_sample/injector/app_injector.dart';
import 'package:flutter_sample/widgets/app_button.dart';
import 'package:flutter_sample/widgets/circle_avatar_image.dart';
import 'package:flutter_sample/widgets/user_info_input.dart';
import 'package:flutter_sample/features/booking/bloc/booking_bloc.dart';

@RoutePage(name: 'BookingRoute')
class BookingPage extends StatefulWidget {
  const BookingPage({Key? key, required this.modelId}) : super(key: key);

  final int modelId;

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final BookingBloc _bookingBloc = AppInjector.get<BookingBloc>();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _phoneFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _addressFocusNode = FocusNode();

  @override
  void initState() {
    _bookingBloc.add(BookingLoaded(modelId: widget.modelId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (didPop) {
          return;
        }
        _bookingBloc.add(const BookingCancelAllChanged());
      },
      child: BlocProvider<BookingBloc>.value(
        value: _bookingBloc,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
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
      backgroundColor: Theme.of(context).primaryColor,
      title: const Text('Booking'),
      centerTitle: true,
      leading: CloseButton(
        onPressed: () {
          Navigator.pop(context);
        },
      ),
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
          UserInfoInput(
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
          UserInfoInput(
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
          UserInfoInput(
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
          UserInfoInput(
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: AppButton(
          onPressed: () {
            _handleSaveBooking(state);
          },
          title: 'Confirm',
          backgroundColor: Theme.of(context).primaryColor,
          titleColor: Colors.white,
          borderColor: Theme.of(context).primaryColor,
        ),
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

  Widget _buildUserAvatar(BookingState state) {
    return CircleAvatarImage(
      size: 120,
      avatar: state.user.imagePath,
      name: state.user.name ?? '',
      style: const TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.w600,
        fontSize: 30,
      ),
    );
  }
}
