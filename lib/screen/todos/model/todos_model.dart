class TodosModel {
  String? title;
  int? userId, id;
  bool? completed;

  TodosModel({this.title, this.userId, this.id, this.completed});

  factory TodosModel.mapTomodel(Map m1) {
    return TodosModel(
        title: m1['title'],
        userId: m1['userId'],
        id: m1['id'],
        completed: m1['completed']);
  }
}
