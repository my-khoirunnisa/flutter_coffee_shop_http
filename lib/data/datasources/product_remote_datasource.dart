import 'package:flutter_coffee_shop/data/models/product_response_model.dart';
import 'package:http/http.dart' as http;

class ProductRemoteDatasource {
  Future<ProductResponseModel> getProducts() async {
    final response = await http.get(
      Uri.parse('http://10.0.2.2:1337/api/products?populate=*'),
    );
    if (response.statusCode == 200) {
      return ProductResponseModel.fromJson(response.body);
    } else {
      throw Exception('Failed to load task');
    }
  }
}
