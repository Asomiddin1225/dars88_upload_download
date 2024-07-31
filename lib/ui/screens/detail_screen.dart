import 'package:dars88_upload_download/blocs/file/file_bloc.dart';
import 'package:dars88_upload_download/data/models/file_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailScreen extends StatelessWidget {
  final FileModel file;

  const DetailScreen({Key? key, required this.file}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(file.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                file.rasim,
                fit: BoxFit.cover,
                width: 150,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              file.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              file.malumod,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            LinearProgressIndicator(
              value: file.progress,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<FileBloc>().add(UploadFile(file: file));
                  },
                  icon: const Icon(
                    Icons.upload,
                    color: Colors.red,
                    size: 40,
                  ),
                ),
                file.isLoading
                    ? const CircularProgressIndicator()
                    : Container(
                        child: ElevatedButton(
                          onPressed: () {
                            if (file.isDownloaded) {
                              // open
                              context
                                  .read<FileBloc>()
                                  .add(OpenFile(filePath: file.saveUrl));
                            } else {
                              context
                                  .read<FileBloc>()
                                  .add(DownloadFile(file: file));
                            }
                          },
                          child: Text(
                            file.isDownloaded
                                ? "Yuklangan Kitobni Ochish"
                                : "Kitobni Yuklash",
                            style: TextStyle(color: Colors.blue, fontSize: 25),
                          ),
                        ),
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
