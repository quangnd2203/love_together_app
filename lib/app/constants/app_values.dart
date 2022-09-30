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

const String PRESS_CONTINUED = 'Ấn để tiếp tục...';

const String ONBOARDING_TEXT_ONE = '''
Hello cục Cưng đáng iuuu của anhhhhh!!!!

Zậy là đã bước qua tròn 2 năm iuuu nhau ròi ha, ùi ui mới đó mà nhanh thiệt luôn ơ ọ. Cảm giác ngày 1/10/2020 chỉ mới vừa trôi qua cách đây mấy ngày thoi ó em iu. Nhanh thiệt luôn ơ ọ. Trong anh cảm xúc bây giờ nó lạ lắm luôn ơ cục Cưng của anhhhh.... Vừa bồi hồi, vừa xúc động, mà vừa xao xuyến nó lạ lắm ọooo....
''';

const String ONBOARDING_TEXT_TWO = '''
Hầyy cảm ơn cục Cưng của anh đã luôn đồng hành với anh, luôn luôn ở bên cạnh giúp đỡ, ủng hộ anh, ở bên cạnh anh những lúc anh gặp bế tắc và khó khăn nhất. Anh thật sự cảm ơn người iu của anh nhiều lắm. Anh luôn cảm thấy may mắn và biết ơn cuộc sống này khi luôn được ở bên chăm sóc em iu của mình.
Người yêu ở bên cạnh anh đã là một thiệt thòi cho em lắm rồi. Anh thật sự rất xin lỗi em iu của anh nhiều lắm. Anh sẽ cố gắng thay đổi, cải thiện bản thân mình tốt hơn nữa, lắng nghe iu thương người iu của anh nhiều hơn. Em có biết không? 
Anh iu em nhiều lắm đóoooo !!!!!!!
''';

const String ONBOARDING_TEXT_THREE = '''
Anh chúc người iu của anh bước sang năm iu nhau thứ 3 cùng anh luôn luôn trẻ trung xinh đẹp, học hành sự nghiệp thiệt là giỏi giang, hơn hết nữa là em iuuuu luôn giữ được nụ cười trên môi, sẽ iuuu anh thiệt nhìuuuuu và cùng anh trải nghiệm nhìuu hơn nữa những chân trời mới lạ, những điều mới mẻ trong cuộc sống này ọoooooo.

Anh có một món quà nho nhỏ muốn tặng người iu của anh lắm nìa ọ. App iuu này anh đang phát triển, có nhiều chỗ anh chưa hoàn thành được, xin người iu của anh lượng thứ cho anh nha ọ. Anh sẽ cố gắng hoàn thành trong thời giann nhanh nhất ọoooo

Chúc em iuu enjoy cái moment nàyyyy!!!!
''';

/// FLAVOR = dev => development
/// FLAVOR = prod => product
const String FLAVOR = String.fromEnvironment('FLAVOR');
