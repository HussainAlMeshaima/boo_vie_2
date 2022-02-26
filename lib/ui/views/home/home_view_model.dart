import 'dart:developer';

import 'package:boo_vie/app/core/custom_base_view_model.dart';
import 'package:boo_vie/app/locator/locator.dart';

import '../../../app/services/book_service.dart';

class HomeViewModel extends CustomBaseViewModel {
  final BookService _bookService = locator<BookService>();
  Future<void> init() async {}

  Future<void> getListVolumes() async {
    dynamic books = await _bookService.getListVolumes('batman');
    log(books.toString());
  }
}
