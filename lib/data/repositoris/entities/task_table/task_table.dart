import 'package:moor/moor.dart';

part 'task_table.g.dart';

@DataClassName('Tbl_Task')
class TaskTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text().nullable()();
  TextColumn get title => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
}

@UseMoor(
  tables: [TaskTable,],
  queries: {
    
  },
)
class Database extends _$Database {
  Database(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      beforeOpen: (details) async {
        // populate data
        
      },
    );
  }
}