import 'dart:io';
import 'package:flutter_quizz/models/detail.dart';
import 'package:flutter_quizz/models/grocery.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'kendb.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE groceries(
          id INTEGER PRIMARY KEY,
          name TEXT
      )
      ''');
    await db.execute('''
      CREATE TABLE detail(
          id INTEGER PRIMARY KEY,
          weight INTEGER,
          height INTEGER,
          createdDate TEXT,
      )
      ''');
  }

  Future<List<Grocery>> getGroceries() async {
    Database db = await instance.database;
    var groceries = await db.query('groceries', orderBy: 'name');
    List<Grocery> groceryList = groceries.isNotEmpty
        ? groceries.map((c) => Grocery.fromMap(c)).toList()
        : [];
    return groceryList;
  }

  Future<int> add(Grocery grocery) async {
    Database db = await instance.database;
    return await db.insert('groceries', grocery.toMap());
  }

  Future<int> remove(int id) async {
    Database db = await instance.database;
    return await db.delete('groceries', where: 'id =?', whereArgs: [id]);
  }

  Future<int> update(Grocery grocery) async {
    Database db = await instance.database;
    return await db.update('groceries', grocery.toMap(),
        where: "id = ?", whereArgs: [grocery.id]);
  }

  Future<List<Detail>> getDetailList() async {
    Database db = await instance.database;
    var data = await db.query('detail', orderBy: 'id');
    List<Detail> list =
        data.isNotEmpty ? data.map((e) => Detail.fromMap(e)).toList() : [];
    return list;
  }

  Future<int> addDetail(Detail detail) async {
    Database db = await instance.database;
    return await db.insert('detail', detail.toMap());
  }

  Future<Detail?> getDetailById(int id) async {
    Database db = await instance.database;
    var result = await db.query('detail', where: 'id=?', whereArgs: [id]);
    if (result.isEmpty) {
      throw new Exception('ID NOT FOUND ');
    }
    return Detail.fromMap(result.first);
  }

    Future<int> updateDetail(Detail detail) async {
    Database db = await instance.database;
    return await db.update('groceries', detail.toMap(),
        where: "id = ?", whereArgs: [detail.id]);
  }
}
