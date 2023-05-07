// ignore: unnecessary_import
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:epubx/epubx.dart';
import 'package:flutter/services.dart';
import 'package:universal_file/universal_file.dart';
import 'package:path_provider/path_provider.dart';

class EpubDocument {
  static Future<EpubBook> openAsset(String assetName) async {
    final byteData = await rootBundle.load(assetName);
    final bytes = byteData.buffer.asUint8List();
    return EpubReader.readBook(bytes);
  }

  static Future<EpubBook> openData(Uint8List bytes) async {
    return EpubReader.readBook(bytes);
  }

  static Future<EpubBook> openFile(File file) async {
    final bytes = await file.readAsBytes();
    return EpubReader.readBook(bytes);
  }

  static Future<EpubBook> openUrl(String url) async {
    final dio = Dio();
    final response = await dio.get(
      url,
      options: Options(responseType: ResponseType.bytes),
    );
    final bytes = response.data as Uint8List;

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/book.epub');
    await file.writeAsBytes(bytes);

    return EpubReader.readBook(bytes);
  }
}
