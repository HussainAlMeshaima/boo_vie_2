import "package:injectable/injectable.dart";
import "package:boo_vie/app/router/router.dart";
    
@lazySingleton
class RouterService {
  final BooVieRouter router = BooVieRouter();
}