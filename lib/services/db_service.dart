import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:tco_task/constats/enviroment.dart';
import 'package:tco_task/models/airport/airport_model.dart';

class DbService {
  Database? _airportDatabase;

  Future<Database> get database async {
    if (_airportDatabase != null) return _airportDatabase!;

    _airportDatabase = await initDB();

    return _airportDatabase!;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'airports_db.db');

    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute('CREATE TABLE Airport('
          'id INTEGER PRIMARY KEY,'
          'code TEXT,'
          'lat TEXT,'
          'lon TEXT,'
          'name TEXT'
          'city TEXT,'
          'state TEXT,'
          'country TEXT'
          ')');
    });
  }

  Future<int> createAirport(AirportModel airportModel) async {
    final db = await database;
    final res = await db.insert('Airport', airportModel.toJson());

    return res;
  }

  Future<List<AirportModel>> getAllAirports() async {
    final db = await database;
    final res = await db.rawQuery("SELECT * FROM Airport");

    List<AirportModel> list =
        res.isNotEmpty ? res.map((c) => AirportModel.fromJson(c)).toList() : [];

    return list;
  }
}
