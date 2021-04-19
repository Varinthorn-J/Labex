import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqLiteHelper {
  final String db_name = "my_db.db";
  final String table_name = "user_table";
  int version = 1;
  final String firstnamecol = "first_name";
  final String lastnamecol = "last_name";
  final String addresscol = "address";
  final String phonecol = "phone";
  final String emailcol = "Email";
  final String passwordcol = "password";

  // final String
  SqLiteHelper() {
    initDatabase();
  }

  Future<Null> initDatabase() async {
    await openDatabase(join(await getDatabasesPath(), db_name),
        onCreate: (db, version) => db.execute(
            'CREATE TABLE $table_name(id INTEGER PRIMARY KEY, $firstnamecol TEXT,$lastnamecol TEXT,$addresscol TEXT,$phonecol TEXT,$emailcol TEXT,$passwordcol TEXT, )'),
        version: version);
  }
}
