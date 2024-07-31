import 'package:dars88_upload_download/data/models/file_model.dart';

class FileRepository {
  final List<FileModel> _files = [
    FileModel(
      id: 1,
      title: "Harry Potter Image",
      url:
          "https://static0.srcdn.com/wordpress/wp-content/uploads/2023/08/harry-potter-movies-length-runtime.jpg",
    ),
    FileModel(
      id: 2,
      title: "Harry Potter PDF",
      url:
          "https://vidyaprabodhinicollege.edu.in/VPCCECM/ebooks/ENGLISH%20LITERATURE/Harry%20potter/(Book%207)%20Harry%20Potter%20And%20The%20Deathly%20Hallows.pdf",
    ),
    FileModel(
      id: 3,
      title: "Harry Potter Video",
      url:
          "https://videos.pexels.com/video-files/7977616/7977616-hd_1920_1080_30fps.mp4",
    ),
    FileModel(
      id: 4,
      title: "Harry Potter Song",
      url:
          "https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3",
    ),
  ];

  List<FileModel> getFiles() {
    return [..._files];
  }
}
