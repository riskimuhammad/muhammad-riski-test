class ResponseCurrEntity {
  int? curr;
  String? type;
  String? amper;

  ResponseCurrEntity(
    this.curr,
    this.type,
    this.amper,
  );

  ResponseCurrEntity.fromJson(dynamic json) {
    curr = json["curr"];
    type = json["type"];
    amper = json["amper"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["curr"] = curr;
    data["type"] = type;
    data["amper"] = amper;
    return data;
  }
}
