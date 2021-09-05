import 'package:get/get.dart';
import 'package:winlife/controller/auth_controller.dart';
import 'package:winlife/data/model/category_model.dart';
import 'package:winlife/data/provider/http_service.dart';

class MainController extends GetxController {
  RxList<CategoryItem> listCategory = RxList<CategoryItem>();
  RxList<CategoryItem> listConselor = RxList<CategoryItem>();
  final AuthController _authController = Get.find();

  void getAllCategory() async {
    List<CategoryItem> listCat = [];
    var result = await HttpService.getAllKategori(_authController.user.token);
    listCategory.clear();
    result['data']['v13nr_kategori'].forEach((element) {
      listCategory.add(CategoryItem.fromJson(element));
    });
  }

  @override
  void onInit() {
    getAllCategory();
    super.onInit();
  }
}
