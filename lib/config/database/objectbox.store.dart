import 'dart:io';

import 'package:objectbox/objectbox.dart';

class ObjectBoxStore {
  late final Store store;

  ObjectBoxStore._create(this.store) {}

  // static Future<ObjectBoxStore> create() async {
  //   final store = await openStore();

  //   var syncServerIp = Platform.isAndroid ? "10.0.2.2" : "127.0.0.1";

  //   SyncClient syncClient =
  //       SyncClient(store, 'ws://$syncServerIp:9999', SyncCredentials.none());
  //   syncClient.start();
  //   return ObjectBoxStore._create(store);
  // }
}
