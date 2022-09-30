// ignore_for_file: avoid_classes_with_only_static_members

enum AppImages {
  homeBackground,
  navigationHeart,
  navigationAlert,
  navigationArrow,
  navigationCalendar,
  navigationHome,
  navigationMap,
  navigationMenu,
  navigationMessage,
  navigationNotification,
  error,
  appLogo,
  homeHeart,
  homeAvatarMale,
  homeAvatarFemale,
}

extension AppImageExtension on AppImages {
  static String png(String name) => 'assets/images/png/$name.png';
  static String jpg(String name) => 'assets/images/jpg/$name.jpg';
  static String svg(String name) => 'assets/images/svg/$name.svg';
  static String lottie(String name) => 'assets/lotties/$name.json';

  String get value {
    switch (this) {
      case AppImages.homeBackground:
        return png('home_background');
      case AppImages.homeHeart:
        return png('home_heart');
      case AppImages.navigationAlert:
        return svg('navigation_alert');
      case AppImages.navigationCalendar:
        return svg('navigation_calendar');
      case AppImages.navigationHome:
        return svg('navigation_home');
      case AppImages.navigationMap:
        return svg('navigation_map');
      case AppImages.navigationMenu:
        return svg('navigation_menu');
      case AppImages.navigationMessage:
        return svg('navigation_message');
      case AppImages.navigationNotification:
        return svg('navigation_notification');
      case AppImages.navigationArrow:
        return svg('navigation_arrow');
      case AppImages.navigationHeart:
        return svg('navigation_heart');
      case AppImages.error:
        return png('error');
      case AppImages.appLogo:
        return png('app_logo');
      case AppImages.homeAvatarFemale:
        return png('home_avatar_female');
      case AppImages.homeAvatarMale:
        return png('home_avatar_male');
    }
    return '';
  }
}
