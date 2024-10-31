// Package imports:
import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast_io.dart';
import 'package:sembast_web/sembast_web.dart';

export 'package:sembast/sembast.dart';

class SembastDB {
  static const _sembastDbFileName = 'sembastStorage.db';

  static const _version = 1;

  SembastDB._(this.db);

  final Database db;

  final projectStore = stringMapStoreFactory.store('projects');

  final commitStore = stringMapStoreFactory.store('commits');

  static Future<SembastDB> getInstance() async {
    final db = await _getDatabase();

    return SembastDB._(db);
  }

  static Future<Database> _getDatabase() async {
    if (kIsWeb) {
      return databaseFactoryWeb.openDatabase(_sembastDbFileName,
          version: _version);
    }
    final appDocumentDir = await getApplicationDocumentsDirectory();
    final dbPath = join(appDocumentDir.path, _sembastDbFileName);
    return databaseFactoryIo.openDatabase(dbPath, version: _version);
  }
}
