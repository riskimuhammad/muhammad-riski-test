import 'package:get/get.dart';
import 'package:muhammad_riski_test/feature/pln/domain/entity/response_curr_entity.dart';
import 'package:muhammad_riski_test/feature/pln/domain/entity/response_history_entity.dart';
import 'package:muhammad_riski_test/feature/pln/domain/entity/response_user_entity.dart';
import 'package:muhammad_riski_test/feature/pln/domain/usecase/pln_usecase.dart';
import '../../data/model/request_pembayaran_pln.dart';

class PLNController extends GetxController {
  final _remoteUseCase = PLNUseCase();
  Rx<DataUserEntity> userMaping = DataUserEntity.fromJson({}).obs;
  RxList<ResponseCurrEntity> listCurr = <ResponseCurrEntity>[].obs;
  RxList<ResponseHestoryEntity> listHistory = <ResponseHestoryEntity>[].obs;
  Rx<int> selectedCurr = 0.obs;
  Rx<bool> boolSelected = false.obs;
  Rx<int> countHistory = 0.obs;

  build() {
    mapingDataUser();
    getCurrData();
    getHistoryData();
  }

  getCurrData() {
    listCurr.addAll([
      ResponseCurrEntity.fromJson(
          {"curr": 100000, 'amper': "66.56", "type": "kWh"}),
      ResponseCurrEntity.fromJson(
          {"curr": 150000, 'amper': "66.56", "type": "kWh"}),
      ResponseCurrEntity.fromJson(
          {"curr": 200000, 'amper': "66.56", "type": "kWh"}),
      ResponseCurrEntity.fromJson(
          {"curr": 250000, 'amper': "66.56", "type": "kWh"}),
      ResponseCurrEntity.fromJson(
          {"curr": 300000, 'amper': "66.56", "type": "kWh"})
    ]);
  }

  getHistoryData() {
    listHistory.addAll([
      ResponseHestoryEntity.fromJson(
          {"curr": 10000, "date": "24 Jan 2024, 24:10:00 WIB"}),
      ResponseHestoryEntity.fromJson(
          {"curr": 15000, "date": "24 Jan 2024, 24:10:00 WIB"}),
      ResponseHestoryEntity.fromJson(
          {"curr": 20000, "date": "24 Jan 2024, 24:10:00 WIB"}),
      ResponseHestoryEntity.fromJson(
          {"curr": 25000, "date": "24 Jan 2024, 24:10:00 WIB"}),
      ResponseHestoryEntity.fromJson(
          {"curr": 30000, "date": "24 Jan 2024, 24:10:00 WIB"})
    ]);
    if (listHistory.length > 3) {
      countHistory.value = 3;
    } else {
      countHistory.value = listHistory.length;
    }
  }

  mapingDataUser() {
    final response = getDataUser();
    userMaping.value = DataUserEntity.fromJson(response);
  }

  onSelectedCurr(index) {
    selectedCurr.value = index;
    boolSelected.value = true;
  }

  //USECASE ONLY
  Map<String, dynamic> postDataPln(RequestPembayaranPLNModel? body) {
    return _remoteUseCase.postDataPln(body);
  }

  Map<String, Object> getDataUser() {
    return _remoteUseCase.getDataUser();
  }
}
