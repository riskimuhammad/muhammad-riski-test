class DataUserEntity {
  String? idUser;
  String? name;
  int? saldo;
  String? noTlpn;
  String? noMeter;

  DataUserEntity(this.idUser, this.name, this.saldo, this.noTlpn, this.noMeter);

  DataUserEntity.fromJson(dynamic json) {
    idUser = json["id_user"];
    name = json["name"];
    saldo = json["saldo"];
    noTlpn = json["no_tlpn"];
    noMeter = json['no_meter'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id_user"] = idUser;
    data["name"] = name;
    data["saldo"] = saldo;
    data["no_tlpn"] = noTlpn;
    data['no_meter'] = noMeter;
    return data;
  }
}
