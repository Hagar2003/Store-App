
import 'package:storeapp/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data =await
        // ignore: missing_required_param
        Api().get(url: 'https://fakestoreapi.com/products/categories');
    
      return data;
    }
  }

