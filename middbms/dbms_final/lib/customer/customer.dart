import 'package:flutter/material.dart';
import 'package:dbms_final/homepage.dart';
import 'package:dbms_final/agricultureexpert/agriculture.dart';
import 'package:dbms_final/customer/weather.dart';
import 'package:dbms_final/farmer/screens/farmerinterface.dart';
import 'package:dbms_final/servies/authentication.dart';
import 'package:dbms_final/login/screens/login.dart';
void main()=>runApp(Customer());
class Customer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:new AppBar(title:new Directionality(
          textDirection: TextDirection.ltr,
          child: new Text('Customerinterface')
          ),
          backgroundColor:Color.fromRGBO(40, 80, 40, 0.8)
    ),
    body:Center(
    child:RaisedButton(
          child: Text('weather'),
           shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>weather()),
            );
          },
          color: Color.fromRGBO(40,80,40,0.8),
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
  
        ),
    ),
    drawer: new Drawer(
      child:new ListView(
        padding: new EdgeInsets.only(top: 30.0,left:10.0),
          children: <Widget>
          [
            
            ListTile
            (
              title: const Text('homepage'),
               leading:IconButton(
                          icon: Icon(Icons.home,size: 40),),
              onTap:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>Homepage()));},
            ),
            ListTile
           (
              leading: Editimage(),
              title: const Text('Edit Profile'),
              onTap:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>Customer()));},
           ),
           ListTile
           (
              title: const Text('farmerinterface'),
               leading: Farmerimage(),
              onTap:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>Farmerinterface()));},
            ),
           ListTile
           (
              leading: Agricultureimage(),
              title: const Text('agriculture'),
              onTap:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>Agriculture()));},
           ),
           ListTile
           (
              leading: Logoutimage(),
              title: const Text('Logout'),
              onTap:()async{
                await BaseAuth().signOut();
                   Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return new LoginPage();
            
                }
                )
                );},
           ),
          ],
    ),
    )
    
      );
    
  }
}


