
import 'package:flutter/material.dart';
import 'package:flutter_app/screen/storage/dog_database.dart';
import 'package:flutter_app/model/dog.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';


class DogDao {
  var database;


  DogDao(){
    print('dog dao constructor called');
    openDb();
  }

  Future<Database> openDb() async {
    WidgetsFlutterBinding.ensureInitialized();

    database = openDatabase(join(await getDatabasesPath(), 'dog.db'),
        version: 1,
        onCreate: (db, version) {
          String sql =
              'CREATE TABLE dogs(id INTEGER PRIMARY KEY,name TEXT,age INTEGER)';
          db.execute(sql);
          print('table created');
        });
    if (database != null) {
      print('db is not null');
    }
    return database;
  }

  Future<void> insertDog(Dog dog) async {
    final db = await database;
    int position = await db.insert('dogs', dog.toMap(),
        nullColumnHack: null, conflictAlgorithm: ConflictAlgorithm.replace);
    print('inserted dog--'+dog.name);
    print("inserted at position ="+ position.toString());
  }

}