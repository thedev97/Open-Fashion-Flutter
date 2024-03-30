import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/presentation/our_story_screen/models/our_story_model.dart';

/// A provider class for the OurStoryScreen.
///
/// This provider manages the state of the OurStoryScreen, including the
/// current ourStoryModelObj
class OurStoryProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  OurStoryModel ourStoryModelObj = OurStoryModel();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }
}
