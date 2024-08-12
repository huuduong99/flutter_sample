import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_sample/common/constant/spacer.dart';

class UserInfoInput extends StatelessWidget {
  const UserInfoInput({
    Key? key,
    this.obscureText = false,
    this.initialValue,
    required this.title,
    required this.hintText,
    required this.enable,
    this.focusNode,
    this.nextFocusNode,
    required this.onValueChanged,
    this.prefixIcon,
    this.inputFormatters,
    this.errorMessage,
    this.textInputType = TextInputType.multiline,
    this.textInputAction = TextInputAction.next,
    this.requiredEnterField = true,
  }) : super(key: key);

  final String? initialValue;
  final String title;
  final String hintText;
  final bool enable;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final ValueChanged<String> onValueChanged;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType textInputType;
  final String? errorMessage;
  final TextInputAction textInputAction;
  final bool requiredEnterField;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              text: title,
              style: const TextStyle(color: Color(0xFF5A6271)),
              children: [
                if (requiredEnterField)
                  const TextSpan(
                    text: ' *',
                    style: TextStyle(color: Color(0xFFDA072D)),
                  ),
              ],
            ),
          ),
          verticalSpace8,
          TextFormField(
            obscureText: obscureText,
            initialValue: initialValue,
            keyboardType: textInputType,
            focusNode: focusNode,
            enabled: enable,
            textAlign: TextAlign.start,
            textInputAction: textInputAction,
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
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              enabledBorder: errorMessage != null
                  ? const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                      borderRadius: BorderRadius.all(
                        Radius.circular(999),
                      ),
                    )
                  : const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE2E7ED),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(999),
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
                      borderRadius: BorderRadius.all(
                        Radius.circular(999),
                      ),
                    ),
            ),
            style: const TextStyle(
              color: Color(0xFF2C333A),
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
            onFieldSubmitted: (v) {
              nextFocusNode != null
                  ? nextFocusNode!.requestFocus()
                  : FocusScope.of(context).unfocus();
            },
            onTap: () {
              focusNode?.requestFocus();
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
                      errorMessage!,
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
}
