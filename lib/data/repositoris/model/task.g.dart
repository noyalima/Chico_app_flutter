// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskResource _$TaskResourceFromJson(Map<String, dynamic> json) {
  return TaskResource(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    createdAt: json['created_at'] as String,
  );
}

Map<String, dynamic> _$TaskResourceToJson(TaskResource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'description': instance.description,
      'title': instance.title,
    };
