import 'package:muhammad_riski_test/feature/pln/data/datasources/pln_datasources.dart';
import 'package:muhammad_riski_test/feature/pln/data/model/request_pembayaran_pln.dart';

class PlnRepository implements PlnDatasources {
  final _dataSource = PlnDatasources();
  @override
  Map<String, Object> getDataUser() {
    return _dataSource.getDataUser();
  }

  @override
  Map<String, dynamic> postDataPln(RequestPembayaranPLNModel? body) {
    return _dataSource.postDataPln(body);
  }
}
