 import 'package:dbms_final/utils/datbasefiles/databasetables.dart';
 class Triggers{
  
      static String triggerupdatefarmertable = 'CREATE TRIGGER ${UserTable.userTable}_OnUpdate'+
                                            'AFTER UPDATE ON ${UserTable.userTable} '+
                                            'FOR EACH ROW BEGIN '+
                                            'INSERT INTO ${UserTable.userTable}_OnUpdate(id,oldemail,newemail)'+
                                            'VALUES'+
                                            '(OLD.${UserTable.colId},OLD.${UserTable.colemail},NEW.${UserTable.colemail});'+
                                             'END';
      static String triggerdeletealarm = 'CREATE TRIGGER ${ClockTable.clockTable}_Ondelete'+
                                            'AFTER DELETE ON ${ClockTable.clockTable} '+
                                            'FOR EACH ROW BEGIN '+
                                            'INSERT INTO ${ClockTable.clockTable}_Ondelete(id,alarmid)'+
                                            'VALUES'+
                                            '(OLD.${ClockTable.colId},OLD.${ClockTable.colclockId});'+
                                             'END';
       static String triggerupdatealarm = 'CREATE TRIGGER ${ClockTable.clockTable}_Onupdate'+
                                            'AFTER UPDATE ON ${ClockTable.clockTable} '+
                                            'FOR EACH ROW BEGIN '+
                                            'INSERT INTO ${ClockTable.clockTable}_Onupdate(id,idf,date,time,reason)'+
                                            'VALUES'+
                                            '(OLD.${ClockTable.colId},OLD.${ClockTable.colclockId},NEW.${ClockTable.colDate},NEW.${ClockTable.colTime},NEW.${ClockTable.colReason});'+
                                             'END';                                        
 }