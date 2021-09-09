import 'package:get/get.dart';
import 'package:winlife/controller/auth_controller.dart';
import 'package:winlife/data/model/category_model.dart';
import 'package:winlife/data/model/conselor_model.dart';
import 'package:winlife/data/model/duration_model.dart';
import 'package:winlife/data/provider/http_service.dart';

class MainController extends GetxController {
  RxList<CategoryItem> listCategory = RxList<CategoryItem>();
  RxList<Conselor> listConselor = RxList<Conselor>();
  RxList<DurationItem> listDuration = RxList<DurationItem>();
  final AuthController _authController = Get.find();

  Future<void> getAllCategory() async {
    var result = await HttpService.getAllKategori(_authController.user.token);
    listCategory.clear();
    result['data']['v13nr_kategori'].forEach((element) {
      listCategory.add(CategoryItem.fromJson(element));
    });
  }

  Future<void> getAllConselor() async {
    var result = await HttpService.getAllConselor(_authController.user.token);
    listConselor.clear();
    result['data']['register_konselor'].forEach((element) {
      listConselor.add(Conselor.fromJson(element));
    });
  }

  Future<void> getAllDuration() async {
    var data = await HttpService.getAllDuration(_authController.user.token);
    listDuration.clear();
    print(data);
    data['data']['duration_service'].forEach((element) {
      listDuration.add(DurationItem.fromJson(element));
    });
  }

  @override
  void onInit() {
    getAllCategory();
    getAllConselor();
    getAllDuration();
    super.onInit();
  }
}
