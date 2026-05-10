enum AppRoutes {
  splash,
  home,          // URL input + resolve
  preview,       // media items preview + download
  history,       // download history list
  settings,      // theme / language

  // Template routes — kept to keep template features compiling
  login,
  productDetail;

  String get path => '/$name';
}
