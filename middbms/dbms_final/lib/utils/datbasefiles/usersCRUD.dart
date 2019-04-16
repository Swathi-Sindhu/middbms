import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:dbms_final/utils/dbhelper.dart';
import 'package:dbms_final/utils/datbasefiles/databasetables.dart';
import 'package:dbms_final/login/models/user.dart';
class Usercrudoperations{
  DatabaseHelper databaseHelper=DatabaseHelper();
  Future<List<Map<String,dynamic>>> getUserMapList() async {
    Database db = await databaseHelper.database;

    var result = db.rawQuery('SELECT * FROM ${UserTable.userTable} ORDER BY ${UserTable.colId} ASC');
    return result;
  }

  // insert into table
  Future<int> insertUser(User user) async {
    Database db = await databaseHelper.database;

    int result = await db.insert(UserTable.userTable, user.toMap());
    return result;
  }
  Future<int> updateEmailll(String email , User user) async {
    Database db = await databaseHelper.database;
  
    int result = await db.rawUpdate('UPDATE ${UserTable.userTable} SET email = \'$email\' WHERE id = ${user.id}');
    return result;
  }
  
   Future<int> updateFname(String Firstname , User user) async {
    Database db = await databaseHelper.database;
  
    int result = await db.rawUpdate('UPDATE ${UserTable.userTable} SET Firstname = \'$Firstname\' WHERE id = ${user.id}');
    return result;
  }
   Future<int> updateLname(String Lastname , User user) async {
    Database db = await databaseHelper.database;
  
    int result = await db.rawUpdate('UPDATE ${UserTable.userTable} SET Lastname = \'$Lastname\' WHERE id = ${user.id}');
    return result;
  }
     Future<int> updateStreetname(String Streetname , User user) async {
    Database db = await databaseHelper.database;
  
    int result = await db.rawUpdate('UPDATE ${UserTable.userTable} SET Streetname = \'$Streetname\' WHERE id = ${user.id}');
    return result;
  }
     Future<int> updateCity(String City , User user) async {
    Database db = await databaseHelper.database;
  
    int result = await db.rawUpdate('UPDATE ${UserTable.userTable} SET City = \'$City\' WHERE id = ${user.id}');
    return result;
  }
       Future<int> updateState(String State , User user) async {
    Database db = await databaseHelper.database;
  
    int result = await db.rawUpdate('UPDATE ${UserTable.userTable} SET State = \'$State\' WHERE id = ${user.id}');
    return result;
  }

       Future<int> updatePincode(String Pincode , User user) async {
    Database db = await databaseHelper.database;
  
    int result = await db.rawUpdate('UPDATE ${UserTable.userTable} SET Pincode = \'$Pincode\' WHERE id = ${user.id}');
    return result;
  }

  // update the table
  Future<int> updateUser(User user) async {
    Database db = await databaseHelper.database;

    int result = await db.update(UserTable.userTable, user.toMap(), where: '${UserTable.colId} : ?', whereArgs: [user.id]);
    return result;
  }

  // delete from table
  Future<int> deleteUser(int id) async {
    Database db = await databaseHelper.database;

    int result = await db.rawDelete('DELETE FROM ${UserTable.userTable} WHERE ${UserTable.colId} = id');
    return result;
  }

  // get number of users
  Future<int> getTotalUserCount() async {
    Database db = await databaseHelper.database;

    List<Map<String, dynamic>> countmap = await db.rawQuery('SELECT COUNT (*) FROM ${UserTable.userTable}');
    int result = Sqflite.firstIntValue(countmap);
    return result;
  }

  Future<List<User>> getUserList() async {
    var usermaplist = await getUserMapList();
    int count = usermaplist.length;
    print('userscount');
    print(count);
    List<User> userslist = List<User>();
    for(int i = 0;i<count ;++i) {
      userslist.add(User.fromMapObject(usermaplist[i]));
    }
    print("usermaplist");
    print(usermaplist);
    return userslist;
  }
  Future<int> getid() async {
    var usermaplist = await getUserMapList();
    int count = usermaplist.length;

    List<User> userslist = List<User>();
    for(int i = 0;i<count ;++i) {
      userslist.add(User.fromMapObject(usermaplist[i]));
    }
    print("usermaplist");
    print(usermaplist[count-1]['id']);
    return usermaplist[count-1]['id'];
  }
 Future<Map<String,dynamic>> getUserwithEmail(String emailid) async {
    Database db = await databaseHelper.database;

    List<Map<String,dynamic>> userlist = await db.rawQuery('SELECT * FROM ${UserTable.userTable} WHERE ${UserTable.colemail} = \'$emailid\'');
    return userlist[0];
  }

  

}