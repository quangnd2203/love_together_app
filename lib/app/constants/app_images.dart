// ignore_for_file: avoid_classes_with_only_static_members



enum AppImages {
  homeBackground,
  homeHeart,
  navigationAlert,
  navigationArrow,
  navigationCalendar,
  navigationHome,
  navigationMap,
  navigationMenu,
  navigationMessage,
  navigationNotification,
  error,
}

extension AppImageExtension on AppImages{
  static String png(String name) => 'assets/images/png/$name.png';
  static String jpg(String name) => 'assets/images/jpg/$name.jpg';
  static String svg(String name) => 'assets/images/svg/$name.svg';
  static String lottie(String name) => 'assets/lotties/$name.json';

  String get value{
    switch(this){
      case AppImages.homeBackground:
        return png('home_background');
      case AppImages.homeHeart:
        return svg('home_heart');
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
      case AppImages.error:
        return png('error');
    }
    return '';
  }
}
