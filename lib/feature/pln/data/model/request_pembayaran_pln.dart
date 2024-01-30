class RequestPembayaranPLNModel {
  String? idUser;
  int? saldo;
  String? pay;

  RequestPembayaranPLNModel(this.idUser, this.saldo, this.pay);

  RequestPembayaranPLNModel.fromJson(dynamic json) {
    idUser = json["id_user"];
    saldo = json["saldo"];
    pay = json["pay"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id_user"] = idUser;
    data["saldo"] = saldo;
    data["no_tlpn"] = pay;
    return data;
  }
}
