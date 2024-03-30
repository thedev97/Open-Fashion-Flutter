import 'package:flutter/material.dart';
import 'package:open_fashion/core/app_export.dart';
import 'package:open_fashion/presentation/collection_screen/models/collection_model.dart';

/// A provider class for the CollectionScreen.
///
/// This provider manages the state of the CollectionScreen, including the
/// current collectionModelObj
class CollectionProvider extends ChangeNotifier {
  CollectionModel collectionModelObj = CollectionModel();

  @override
  void dispose() {
    super.dispose();
  }
}
