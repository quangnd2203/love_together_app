import 'package:get/get.dart';

double get viewPaddingTop => Get.mediaQuery.viewPadding.top;

const String APP_NAME = 'Love Together';

final DateTime loveBeginDate = DateTime(2020, 10);

DateTime get today => DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

const String APP_POEM = '''
Ta hẹn nhau vào một buổi chiều đông
Em tỏa nắng như mặt trời mùa hạ.
Tay buông lơi như đánh rơi tán lá.
Khẽ nhoẻn cười: “tay anh có lạnh không?”
Khăn choàng vai, môi nhỏ thoáng chu cong
Chân sáo níu tay anh tan vào phố
Hoàng hôn buông đổ bóng mình ngồ ngộ
Bóng lớn to tròn bên bóng nhỏ tung tăng.
''';

/// FLAVOR = dev => development
/// FLAVOR = prod => product
const String FLAVOR = String.fromEnvironment('FLAVOR');
