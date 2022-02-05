// * Importing Libraries
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io' as io;

class DbHelper {
  // * Create a Database
  static late Database _db;

  static const String DB_Name = 'test.db';
  static const String Table_User = 'user';
  static const int Version = 1;

  static const String C_UserID = 'user_id';
  static const String C_UserNm = 'user_nm';
  static const String C_Email = 'email';
  static const String C_Pass = 'pass';

  // * Create a Database Functions
  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }

    _db = await initDb();

    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_Name);
    var db = await openDatabase(
      path,
      version: Version,
      onCreate: _onCreate,
    );
    return db;
  }

  _onCreate(Database db, int intVersion) async {
    await db.execute("CREATE TABLE $Table_User ("
        "$C_UserID TEXT, "
        "$C_UserNm TEXT, "
        "$C_Email TEXT, "
        "$C_Pass TEXT "
        " PRIMARY KEY ($C_UserID)"
        ")");
  }
}
