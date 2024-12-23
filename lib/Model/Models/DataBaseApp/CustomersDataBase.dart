import 'package:poin_of_sale/Model/Models/DataBaseApp/DataBaseSqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class CustomersDatabase {

  static const tableCustomer = 'Customer';
  static const version = 1;
  static const id = 'ID';
  static const name = 'Name';
  static const phone = 'Phone';
  static const address = 'Address';

    static Database? _database;

  static Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await DataBaseSqflite.databasesq;
    return _database!;
  }

  Future<int>insertCustomers (Map<String, dynamic> data) async {
   _database = await database;
    return _database!.insert(
      tableCustomer,
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
   Future<List<Map<String, dynamic>?>> getAllCustomrers() async {
    _database = await database;
    return await _database!.query(tableCustomer);
  }
}