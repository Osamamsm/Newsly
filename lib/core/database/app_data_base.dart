import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

@lazySingleton
class AppDataBase {
  Database? _database;

  Future<Database> get database async {
    if (_database == null) {
      _database = await _initialDB();
      return _database!;
    } else {
      return _database!;
    }
  }

  Future<Database> _initialDB() async {
    final dataBasePath = await getDatabasesPath();

    final path = join(dataBasePath, 'newsly.db');

    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database dataBase, int version) async {
    await dataBase.execute('''
    CREATE TABLE bookmarks(
    article_id TEXT PRIMARY KEY,
    title TEXT,
    description TEXT,
    image_url TEXT,
    content TEXT,
    link TEXT,
    source_name TEXT,
    pub_date TEXT,
    key_words TEXT
)
  ''');
  }

  Future<int> insertBookMark(Map<String, dynamic> bookMark) async {
    final db = await database;

    return db.insert(
      'bookmarks',
      bookMark,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<int> deleteBookMark(String id) async {
    final db = await database;

    return db.delete('bookmarks', where: 'article_id = ?', whereArgs: [id]);
  }

  Future<List<Map<String, dynamic>>> getBookMarks() async {
    final db = await database;

    return db.query('bookmarks');
  }
}
