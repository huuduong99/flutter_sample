class Settings {
  Settings({required this.title, required this.content, this.onPressed});

  late String title;
  late String content;
  void Function()? onPressed;
}
