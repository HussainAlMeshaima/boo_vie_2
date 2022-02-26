import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../models/books/list_volumes/list_volumes_error_model.dart';
import '../models/books/list_volumes/list_volumes_model.dart';

@lazySingleton
class BookService {
  static const _prefix = 'https://www.googleapis.com/books/v1';

  Future<dynamic> getListVolumes(String? q) async {
    http.Response _response = await http.get(Uri.parse('$_prefix/volumes?q=$q'));
    if (_response.statusCode != 200) {
      return ListVolumesErrorModel.fromJson(_response.body);
    }
    return ListVolumesModel.fromJson(_response.body);
  }
}
