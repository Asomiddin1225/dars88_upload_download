import 'package:dars88_upload_download/data/models/file_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dars88_upload_download/blocs/file/file_bloc.dart';
import 'package:dars88_upload_download/ui/screens/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<FileModel> _allFiles = [];
  List<FileModel> _filteredFiles = [];
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.book_sharp,
              size: 30,
              color: Colors.red,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Kitoblar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Kitoblarni qidirish",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
              ),
              onChanged: (query) {
                setState(() {
                  _searchQuery = query.toLowerCase();
                  _filteredFiles = _allFiles.where((file) {
                    return file.title.toLowerCase().contains(_searchQuery);
                  }).toList();
                });
              },
            ),
          ),
          Expanded(
            child: BlocBuilder<FileBloc, FileState>(
              bloc: context.read<FileBloc>()..add(GetFiles()),
              builder: (context, state) {
                if (state.status == FileStatus.loading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (state.status == FileStatus.error) {
                  return Center(
                    child: Text(state.errorMessage!),
                  );
                }

                if (state.files == null || state.files!.isEmpty) {
                  return const Center(
                    child: Text("Fayllar mavjud emas"),
                  );
                }

                _allFiles = state.files!;
                _filteredFiles =
                    _searchQuery.isEmpty ? _allFiles : _filteredFiles;

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    itemCount: _filteredFiles.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 15,
                      childAspectRatio: 0.6,
                    ),
                    itemBuilder: (ctx, index) {
                      final file = _filteredFiles[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailScreen(file: file),
                            ),
                          );
                        },
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  file.rasim,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  file.title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
