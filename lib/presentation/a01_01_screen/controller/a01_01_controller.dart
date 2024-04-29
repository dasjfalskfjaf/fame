import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/a01_01_model.dart';

/// A controller class for the A0101Screen.
///
/// This class manages the state of the A0101Screen, including the
/// current a0101ModelObj
class A0101Controller extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<A0101Model> a0101ModelObj = A0101Model().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
