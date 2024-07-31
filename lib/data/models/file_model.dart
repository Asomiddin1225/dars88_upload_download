class FileModel {
  int id;
  String title;
  String url;
  bool isLoading;
  bool isDownloaded;
  double progress;
  String saveUrl;

  FileModel({
    required this.id,
    required this.title,
    required this.url,
    this.isLoading = false,
    this.isDownloaded = false,
    this.progress = 0,
    this.saveUrl = "",
  });
}
