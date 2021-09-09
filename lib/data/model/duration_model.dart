class DurationItem {
  String id;
  String name;
  String time;

  DurationItem(this.id, this.name, this.time);

  factory DurationItem.fromJson(Map<String, dynamic> json) {
    return DurationItem(
        json['id'], json['duration_name'], json['duration_time']);
  }
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'time': time,
      };
}
