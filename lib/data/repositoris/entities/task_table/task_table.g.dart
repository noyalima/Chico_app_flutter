 // GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_table.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Tbl_Task extends DataClass implements Insertable<Tbl_Task> {
  final int id;
  final String description;
  final String title;
  final DateTime createdAt;
  Tbl_Task({@required this.id, this.description, this.title, this.createdAt});
  factory Tbl_Task.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Tbl_Task(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  TaskTableCompanion toCompanion(bool nullToAbsent) {
    return TaskTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory Tbl_Task.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Tbl_Task(
      id: serializer.fromJson<int>(json['id']),
      description: serializer.fromJson<String>(json['description']),
      title: serializer.fromJson<String>(json['title']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'description': serializer.toJson<String>(description),
      'title': serializer.toJson<String>(title),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Tbl_Task copyWith(
          {int id, String description, String title, DateTime createdAt}) =>
      Tbl_Task(
        id: id ?? this.id,
        description: description ?? this.description,
        title: title ?? this.title,
        createdAt: createdAt ?? this.createdAt,
      );
  @override
  String toString() {
    return (StringBuffer('Tbl_Task(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('title: $title, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(description.hashCode, $mrjc(title.hashCode, createdAt.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Tbl_Task &&
          other.id == this.id &&
          other.description == this.description &&
          other.title == this.title &&
          other.createdAt == this.createdAt);
}

class TaskTableCompanion extends UpdateCompanion<Tbl_Task> {
  final Value<int> id;
  final Value<String> description;
  final Value<String> title;
  final Value<DateTime> createdAt;
  const TaskTableCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.title = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  TaskTableCompanion.insert({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.title = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  static Insertable<Tbl_Task> custom({
    Expression<int> id,
    Expression<String> description,
    Expression<String> title,
    Expression<DateTime> createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (title != null) 'title': title,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  TaskTableCompanion copyWith(
      {Value<int> id,
      Value<String> description,
      Value<String> title,
      Value<DateTime> createdAt}) {
    return TaskTableCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
      title: title ?? this.title,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TaskTableCompanion(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('title: $title, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $TaskTableTable extends TaskTable
    with TableInfo<$TaskTableTable, Tbl_Task> {
  final GeneratedDatabase _db;
  final String _alias;
  $TaskTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, description, title, createdAt];
  @override
  $TaskTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'task_table';
  @override
  final String actualTableName = 'task_table';
  @override
  VerificationContext validateIntegrity(Insertable<Tbl_Task> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Tbl_Task map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Tbl_Task.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TaskTableTable createAlias(String alias) {
    return $TaskTableTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TaskTableTable _taskTable;
  $TaskTableTable get taskTable => _taskTable ??= $TaskTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [taskTable];
}
