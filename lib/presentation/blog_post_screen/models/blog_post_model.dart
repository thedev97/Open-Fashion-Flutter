import 'widgetslider_item_model.dart';
import 'fashionchipview_item_model.dart';
import '../../../core/app_export.dart';

class BlogPostModel {
  List<WidgetsliderItemModel> widgetsliderItemList =
      List.generate(1, (index) => WidgetsliderItemModel());

  List<FashionchipviewItemModel> fashionchipviewItemList =
      List.generate(2, (index) => FashionchipviewItemModel());
}
