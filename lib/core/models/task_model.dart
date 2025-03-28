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

factory TaskModel.fromJson(Map<String,dynamic> json)=>
   TaskModel(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    status: json['status'],
    createdAt: json['created_at'],
    updatedAt: json['updated_at'],
  );

}