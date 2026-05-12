// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:curso_clean_arch/core/database/tables/habits_table.dart';

class HabitModel {
  final String id;
  final String title;
  final DateTime createdAt;

  const HabitModel({
    required this.id,
    required this.title,
    required this.createdAt,
  });

    factory HabitModel.fromMap(Map<String, dynamic> map) {
    return HabitModel(
      id: map[idColumnName] as String,
      title: map[titleColumnName] as String,
      createdAt: DateTime.parse(map[createdAtColumnName]),
    );
  }

    Map<String, dynamic> toMap() {
    return <String, dynamic>{
      idColumnName: id,
      titleColumnName: title,
      createdAtColumnName: createdAt.millisecondsSinceEpoch,
    };
  }
}
