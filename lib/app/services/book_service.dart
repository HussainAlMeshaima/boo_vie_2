import 'dart:convert';

import 'package:boo_vie/app/models/books/book_volume/book_volume.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../models/books/list_volumes/list_volumes_model.dart';

@lazySingleton
class BookService {
  static const _prefix = 'https://www.googleapis.com/books/v1';

  Future<dynamic> getListVolumes({required String q}) async {
    http.Response _response = await http.get(Uri.parse('$_prefix/volumes?q=$q'));
    if (_response.statusCode != 200) { return jsonDecode(_response.body); }
    return ListVolumesModel.fromJson(_response.body);
  }

  Future<dynamic> getBook({required String volumeId}) async {
    http.Response _response = await http.get(Uri.parse('$_prefix/volumes/$volumeId'));
    if (_response.statusCode != 200) { return jsonDecode(_response.body); }
    return BookVolume.fromJson(_response.body);
  }
}
