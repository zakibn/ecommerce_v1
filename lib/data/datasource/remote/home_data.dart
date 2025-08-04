import '../../../core/class/crud.dart';
import '../../../core/class/crud_1.dart';
import '../../../linkapi.dart';

/* class HomeData {
  Crud_1 crud;
  HomeData(this.crud);
  getData() async {
    var response = await crud.postData(AppLink.homepage, {});
    return response.fold((l) => l, (r) => r);
  }
} */

class HomeData {
  Crud_1 crud_1;
  HomeData(this.crud_1);

  getData() async {
    var response = await crud_1.getData(AppLink.homepage);
    return response.fold((l) => l, (r) => r);
  }
}
