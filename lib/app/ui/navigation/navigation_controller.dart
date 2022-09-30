import 'dart:async';
import 'package:get/get.dart';
import '../../utils/app_utils.dart';
import '../ui.dart';

class NavigationController extends BaseController {

  RxInt index = 0.obs;

  @override
  Future<void> onInit() async {
    super.onInit();

  }

  void changePage(int page){
    if(page != 0) {
      AppUtils.toast('Chức năng đang phát triển');
    } else {
      index.value = page;
    }
  }
}
