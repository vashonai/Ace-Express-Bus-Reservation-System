import 'package:flutter/material.dart';
import 'package:mysql_client/mysql_client.dart';

class DbConnection {
  static late MySQLConnection dbPort;

  static void connect() async {
    dbPort = await MySQLConnection.createConnection(
      host: "127.0.0.1",
      port: 3306,
      userName: "root",
      password: "admin",
      databaseName: "ace_express_system",
      secure: false,
    );

    // actually connect to database
    await dbPort.connect();
    debugPrint("Connected to database");
  }
}
