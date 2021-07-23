class Detail {
  final int? id;
  final int weight;
  final int height;
  final String createdDate;

  Detail({
    this.id,
    required this.weight,
    required this.height,
    required this.createdDate,
  });

  factory Detail.fromMap(Map<String, dynamic> json) => new Detail(
      id: json['id'],
      weight: json['weight'],
      height: json['height'],
      createdDate: json['createdDate']);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'weight': weight,
      'height': height,
      'createdDate': createdDate,
    };
  }
}
