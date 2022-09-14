import 'dart:async';
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../../resources/resources.dart';
import '../ui.dart';

class NavigationController extends BaseController {
  final FirebaseRepository firebaseRepository = FirebaseRepository();
  final SocialServiceFirebase socialServiceFirebase = SocialServiceFirebase();

  RxList<TestModel> raw = <TestModel>[].obs;

  RxInt count = 0.obs;

  @override
  Future<void> onInit() async {
    final _ = await socialServiceFirebase.signIn(SocialType.facebook);
    log(_.token!);
    super.onInit();
  }

  Future<void> fetchTestApi() async {
    final NetworkState<List<TestModel>> networkState = await AuthRepository().testApi();
    if (networkState.isSuccess) {
      raw.assignAll(networkState.data!.toList());
      raw.refresh();
    }
  }
}
