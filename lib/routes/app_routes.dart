import '../core/app_export.dart';
import '../presentation/a01_01_screen/a01_01_screen.dart';
import '../presentation/a01_01_screen/binding/a01_01_binding.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String a0101Screen = '/a01_01_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: a0101Screen,
      page: () => A0101Screen(),
      bindings: [A0101Binding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => A0101Screen(),
      bindings: [A0101Binding()],
    )
  ];
}
