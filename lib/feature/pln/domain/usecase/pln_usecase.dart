import '../../data/model/request_pembayaran_pln.dart';
import '../reposeitory/pln_repository_impl.dart';

class PLNUseCase extends PlnRepositoryImpl {
  final _repositoryImpl = PlnRepositoryImpl();
  Map<String, Object> getDataUser() {
    return _repositoryImpl.getDataUser();
  }

  @override
  Map<String, dynamic> postDataPln(RequestPembayaranPLNModel? body) {
    return _repositoryImpl.postDataPln(body);
  }
}
