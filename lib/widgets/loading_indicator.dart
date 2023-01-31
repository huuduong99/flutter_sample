import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator(
      {Key? key, this.backgroundColor, this.loadingColor, this.size = 50})
      : super(key: key);
  final Color? backgroundColor;
  final Color? loadingColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor ?? Colors.grey.shade300,
      child: Center(
        child: SpinKitCircle(
          color: loadingColor ?? Theme.of(context).primaryColor,
          size: size,
        ),
      ),
    );
  }
}
