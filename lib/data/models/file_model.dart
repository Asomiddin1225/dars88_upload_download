import 'package:flutter/material.dart';

class FileModel {
  int id;
  String rasim;
  String title;
  String url;
  String malumod;
  bool isLoading;
  bool isDownloaded;
  double progress;
  String saveUrl;

  FileModel({
    required this.id,
    required this.rasim,
    required this.title,
    required this.malumod,
    required this.url,
    this.isLoading = false,
    this.isDownloaded = false,
    this.progress = 0,
    this.saveUrl = "",
  });
}
