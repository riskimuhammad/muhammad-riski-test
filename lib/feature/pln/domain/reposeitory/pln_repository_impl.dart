import 'package:muhammad_riski_test/feature/pln/data/model/request_pembayaran_pln.dart';
import 'package:muhammad_riski_test/feature/pln/data/repository/pln_repository.dart';

class PlnRepositoryImpl implements PlnRepository {
  final _repository = PlnRepository();
  @override
  Map<String, Object> getDataUser() {
    return _repository.getDataUser();
  }

  @override
  Map<String, dynamic> postDataPln(RequestPembayaranPLNModel? body) {
    return _repository.postDataPln(body);
  }
}
