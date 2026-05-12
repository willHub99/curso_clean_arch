const String tableName = "habits";
const String idColumnName = "id";
const String titleColumnName = "title";
const String createdAtColumnName = "created_at";

const String createHabitsTable = '''
        CREATE TABLE $tableName(
          $idColumnName TEXT PRIMARY KEY,
          $titleColumnName TEXT NOT NULL,
          $createdAtColumnName TEXT NOT NULL
        )
      ''';
