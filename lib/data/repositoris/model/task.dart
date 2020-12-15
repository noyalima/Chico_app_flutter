import 'package:json_annotation/json_annotation.dart';
part 'task.g.dart';
@JsonSerializable(nullable: false, fieldRename: FieldRename.snake)
class TaskResource {
   String id;
  // @JsonKey(name: 'created_at') nome de tag na json
   String createdAt;
   String description;
   String title;

  TaskResource({this.id, this.title, this.description, this.createdAt});

  Map<String, dynamic> toJson() {
    return _$TaskResourceToJson(this);
    
  }

factory TaskResource.fromJson(Map<String, dynamic> jsonMap) =>
      _$TaskResourceFromJson(jsonMap);
  
   /*Map<String, dynamic> toJson() {
    var json = Map<String, dynamic>();
    json['id'] = this.id;
    json['title'] = this.title;
    json['description'] = this.description;
    json['createdAt'] = this.createdAt;
    return json;
    return _$TaskResourceFromJson(this);
  }*/

  /*static TaskResource fromJson(Map<String, dynamic> jsonmap) =>
  
    var taskResource = TaskResource(
      id: jsonmap['id'],
      title: jsonmap['title'],
      description: jsonmap['description'],
      createdAt: jsonmap['createdAt'],
    );
    return _$TaskResourceToJson(jsonmap);*/
  
  
}
