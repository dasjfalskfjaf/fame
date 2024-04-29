import '../../../core/app_export.dart';
import '../controller/a01_01_controller.dart';

/// A binding class for the A0101Screen.
///
/// This class ensures that the A0101Controller is created when the
/// A0101Screen is first loaded.
class A0101Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => A0101Controller());
  }
}
