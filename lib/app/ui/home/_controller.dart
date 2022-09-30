import 'dart:async';
import 'package:get/get.dart';

import '../../constants/app_values.dart';
import '../ui.dart';

class HomeController extends BaseController {
  final RxInt numberOfDate = today.difference(loveBeginDate).inDays.obs;

  @override
  void onInit() {
    super.onInit();
    onFetchDate();
  }

  void onFetchDate() {
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      numberOfDate.value = today.difference(loveBeginDate).inDays;
    });
  }
}
