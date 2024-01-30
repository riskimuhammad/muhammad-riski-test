class ResponseHestoryEntity {
  int? curr;
  String? date;

  ResponseHestoryEntity(
    this.curr,
    this.date,
  );

  ResponseHestoryEntity.fromJson(dynamic json) {
    curr = json["curr"];
    date = json["date"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["curr"] = curr;
    data["date"] = date;
    return data;
  }
}
