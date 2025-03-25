class TaskModel {
  final int id;
  final String title;
  final String description;
  int? status;
  final String createdAt;
  String? updatedAt;

    TaskModel({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.createdAt,
    this.updatedAt,
  });
}