import 'package:boo_vie/app/models/books/list_volumes/list_volumes_error_model.dart';
import 'package:boo_vie/app/models/books/list_volumes/list_volumes_model.dart';
import 'package:boo_vie/app/services/book_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  BookService _bookService = BookService();

  group('test getListVolumes function', () {
    test('it should bring list of books when searching for "eggs" or "batman"', () async {
      ListVolumesModel _eggsBooks = await _bookService.getListVolumes('eggs');
      ListVolumesModel _batmanBooks = await _bookService.getListVolumes('batman');

      bool _isTotalEggsBookItemsGraterThanZero = (_eggsBooks.totalItems ?? -1) > 0;
      bool _isTotalBatmanBookItemsGraterThanZero = (_batmanBooks.totalItems ?? -1) > 0;

      bool _isEggItemItemsGraterThanZero = (_eggsBooks.items?.length ?? -1) > 0;
      bool _isBatmanBookItemsGraterThanZero = (_eggsBooks.items?.length ?? -1) > 0;

      expect(_eggsBooks.kind, isNotNull);
      expect(_batmanBooks.kind, isNotNull);

      expect(_eggsBooks.totalItems, isNotNull);
      expect(_eggsBooks.items, isNotNull);

      expect((_isTotalEggsBookItemsGraterThanZero && _isEggItemItemsGraterThanZero), true);
      expect((_isTotalBatmanBookItemsGraterThanZero && _isBatmanBookItemsGraterThanZero), true);
    });

    test('it should NOT bring list of books when searching for "" ', () async {
      ListVolumesErrorModel _books = await _bookService.getListVolumes('');

      bool _hasErrorMessage = _books.error?.message != null;
      bool _notSuccess = _books.error?.code != 200;

      expect(_hasErrorMessage, true);
      expect(_notSuccess, true);
    });
  });
}
