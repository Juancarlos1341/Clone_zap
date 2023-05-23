import 'package:clone_do_zap/data/clonezap_dao.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<Database> getDatabase() async{
  final String path= join(await getDatabasesPath(), 'clonezap.db');
  return openDatabase(path, onCreate: (db, verion){
    db.execute(ColorsThemeDao.tableSqlColorsTheme);
  }, version: 1);
}