const String emailPattern = r"^[\w-\.]+@([\w-]){2,4}";
const String phoneNumberPattern =
    r"(?:\b|[^0-9])((0|84|\+84)(\s?)([2-9]|[0-9])((\d)(\s+|\.)?){8})(?:\b|[^0-9])";

const String imagePattern = r'.(jpeg|jpg|gif|png|bmp)$';

const String videoPattern = r'.(mp4|avi|wmv|rmvb|mpg|mpeg|3gp)$';

extension StringExtensions on String {
  bool get isEmail => RegExp(emailPattern).hasMatch(this);

  /// Indicates whether a string is a phone number or not.
  bool get isPhoneNumber => RegExp(phoneNumberPattern)
      .hasMatch((length == 9 && !startsWith('0')) ? '0$this' : this);

  bool get isVideoURL => RegExp(videoPattern).hasMatch(this);

  bool get isImageURL => RegExp(imagePattern).hasMatch(this);
}
