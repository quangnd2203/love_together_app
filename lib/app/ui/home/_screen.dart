// ignore_for_file: use_key_in_widget_constructors, flutter_style_todos
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/app_images.dart';
import '../ui.dart';

class HomeScreen extends BaseScreen<HomeController> {

  @override
  Widget? builder() {
    // TODO: implement builder
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppImages.homeBackground.value,
          ),
          fit: BoxFit.fill
        ),
      ),
    );
  }
}
