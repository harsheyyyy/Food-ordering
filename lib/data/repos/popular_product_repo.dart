import 'package:Food_ordering/data/api/api_client.dart';
import 'package:Food_ordering/models/product.dart';
import 'package:Food_ordering/uitls/app_constants.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}