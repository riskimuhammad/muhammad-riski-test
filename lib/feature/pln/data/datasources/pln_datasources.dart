import '../model/request_pembayaran_pln.dart';

class PlnDatasources {
  Map<String, Object> getDataUser() {
    final data = {
      'id_user': '1',
      'name': "Muhammad Riski",
      'saldo': 1000000,
      'no_tlpn': '+6285156006526',
      'no_meter': '112666754417',
    };

    return data;
  }

  Map<String, dynamic> postDataPln(RequestPembayaranPLNModel? body) {
    if (body!.idUser == '2') {
      return {
        "message": 'tidak ada pembayaran',
        "status": false,
        "responseCode": 200
      };
    } else {
      return {
        "message": 'Berhasil melakukan pembayaran',
        "status": true,
        'data': {'pay': 20000, 'user': 'Muhammad riski'},
        "responseCode": 200
      };
    }
  }
}
