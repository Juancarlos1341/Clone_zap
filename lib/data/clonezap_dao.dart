import 'package:clone_do_zap/data/database.dart';
import 'package:sqflite/sqflite.dart';

class ColorsThemeDao {
  static const String tableSqlColorsTheme = 'CREATE TABLE $_tablenameTheme('
  '$_id INTEGER, '
  '$_red TEXT, '
  '$_green INTEGER,'
  '$_blue TEXT)';

  static const String _tablenameTheme = 'themeColor';
  static const String _red = 'red';
  static const String _green = 'grenn';
  static const String _blue = 'blue';
  static const int _id = 1;

  save(Map<String, int> mapaDeCores) async {
    final Database bancoDeDados = await getDatabase();
    return await bancoDeDados.update(_tablenameTheme, mapaDeCores, where: '$_id = 1');

}

}