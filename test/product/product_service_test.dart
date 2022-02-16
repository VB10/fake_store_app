import 'package:fake_store_app/features/home/service/home_service.dart';
import 'package:fake_store_app/product/network/product_network_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vexana/vexana.dart';

void main() {
  late IHomeService homeService;
  setUp(() {
    homeService = HomeService(ProductNetworkManager());
  });
  test('fetchAllProducts - test five elements ', () async {
    final response = await homeService.fetchAllProducts();

    expect(response, isNotEmpty);
  });

  test('fetch all categories - ["electronics","jewelery","mens clothing", "womens clothing"] ', () async {
    final response = await homeService.fetchAllCategories();

    expect(response, isNotEmpty);
  });
}
