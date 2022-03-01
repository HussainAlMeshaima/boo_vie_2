import 'package:boo_vie/app/models/books/book_volume/book_volume.dart';
import 'package:boo_vie/app/models/books/list_volumes/list_volumes_model.dart';
import 'package:boo_vie/app/services/book_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  BookService _bookService = BookService();

  group('test getListVolumes function ---> ', () {
    test('it should bring list of books when searching for "eggs"', () async {
      ListVolumesModel _books = await _bookService.getListVolumes(q: 'eggs');

      expect(_books.kind, isNotNull);
      expect(_books.totalItems, isNotNull);
      expect(_books.items, isNotNull);

      expect(((_books.totalItems ?? -1) > 0), true);
    });

    test('it should bring list of books when searching for "batman"', () async {
      ListVolumesModel _books = await _bookService.getListVolumes(q: 'batman');

      expect(_books.kind, isNotNull);
      expect(_books.totalItems, isNotNull);
      expect(_books.items, isNotNull);
      expect(((_books.totalItems ?? -1) > 0), true);
    });

    test('it should not bring list of books when searching for "" ', () async {
      dynamic _books = await _bookService.getListVolumes(q: '');

      expect(_books?['error']?['message'] != null, true);
      expect(_books?['error']?['message'], "Missing query.");
      expect(_books['error']?['code'] != 200, true);
    });
  });

  group('test getBook  ---> ', () {
    test("it should bring the book with id '01lMAAAAYAAJ'", () async {
      const String _id = '01lMAAAAYAAJ';
      BookVolume book = await _bookService.getBook(volumeId: _id);

      expect(book != null, true);
      expect(book != BookVolume(), true);
      expect(book.id != null, true);
      expect(book.id == _id, true);
    });

    test("it should not bring the book with id '01lMAasdasdqweqw'", () async {
      const String _id = '01lMAasdasdqweqw';
      dynamic book = await _bookService.getBook(volumeId: _id);

      expect(book?['error'] != null, true);
      expect(book?['error']?['code'] != 200, true);
    });

    test("it should not bring the book with id ''", () async {
      const String _id = '';
      dynamic book = await _bookService.getBook(volumeId: _id);

      expect(book?['error'] != null, true);
      expect(book?['error']?['code'] != 200, true);
    });
  });
}
