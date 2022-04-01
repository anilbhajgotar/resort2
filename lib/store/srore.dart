import 'package:resorts/controllers/guest_select.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  CatalogModel? catalog;
  MyStore() {
    catalog = CatalogModel();
  }
}
