/*import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      home: HomePage(

      ),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StreamSubscription? subscription;


  Future checkConnection() async{

    var connectivityResult=await(Connectivity().checkConnectivity());
    if(connectivityResult==ConnectivityResult.mobile){
      Fluttertoast.showToast(msg: "Connect b with mobile ");

    }
    else if(connectivityResult==ConnectivityResult.wifi){
      Fluttertoast.showToast(msg: "Connect with Wi-Fi");
    }
    else{
      Fluttertoast.showToast(msg: "No internet Connection");


    }
  }
  @override
  void iniState(){
    subscription =Connectivity().onConnectivityChanged.listen((event) {checkConnection();
    }
    );
    super.initState();
  }






  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeafffd),
      appBar: AppBar(
        backgroundColor: Color(
            0xff14cdc8),
        title: Center(child: Text('Md. Asif Dewan',
          style: TextStyle(
              fontSize: 30,
              color: Color(0xffecf0f1),
            fontFamily: 'Pushster'
        ),)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlineButton(onPressed: checkConnection,
              child: Text(
                'Check connection',
                style: TextStyle(fontSize: 22,
                color: Color(0xff7f8c8d),
                fontFamily: 'Pushster'
                ),
              ),)



          ],
        ),
      ),




    );
  }
}*/


/*import 'package:flutter/material.dart';
void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Animator(),
    );
  }
}
class Animator extends StatefulWidget {
  const Animator({Key? key}) : super(key: key);

  @override
  _AnimatorState createState() => _AnimatorState();
}

class _AnimatorState extends State<Animator> {
  bool _value=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              _value=_value;
            });
          },
          child: Icon(Icons.play_arrow,
            size: 55,
            color: Colors.black38,

          ),



        ),

        body: Center(
          child: AnimatedContainer(
            height: _value==false? 50:600,
            width: _value==false? 30:500,
            color: Colors.red,

            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.cyan,

              child: CircleAvatar(
                backgroundImage: NetworkImage('https://img.freepik.com/free-vector/cartoon-school-boy-carrying-backpack-waving-hand_29190-4926.jpg?size=338&ext=jpg'),
                radius: 3000,

              ),

            ),

            duration: Duration(seconds: 10),


          ),
        )

    );
  }
}*/









import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );

  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffecf0f1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Center(
              child: DataTable(
                columns: [

                  DataColumn(label: Text('Name',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.purpleAccent),)),
                  DataColumn(label: Text('Age',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.purpleAccent),)),
                  DataColumn(label: Text('Profession',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.purpleAccent),)),
                  DataColumn(label: Text('Department',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.purpleAccent),)),
                  DataColumn(label: Text('Country',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.purpleAccent),)),
                  
                ],
                rows: [
                  DataRow(cells:
                      

                  [

                    DataCell(Text('Anam', style: TextStyle(color: Color(0xff2ecc71)),)),
                    DataCell(Text('20')),
                    DataCell(Text('Student')),
                    DataCell(Text('Computer ')),
                    DataCell(Text('Bangladesh')),

                  ]),

                  DataRow(cells: [
                    DataCell(Text('Anam')),
                    DataCell(Text('20')),
                    DataCell(Text('Student')),
                    DataCell(Text('CMT ',style: TextStyle(color: Color(0xff2ecc71)),)),
                    DataCell(Text('Bangladesh'),),



                  ]),
                  DataRow(cells: [
                    DataCell(Text('Abir',style: TextStyle(color: Color(0xff2ecc71)),)),
                    DataCell(Text('20')),
                    DataCell(Text('Student')),
                    DataCell(Text('Computer ')),
                    DataCell(Text('Bangladesh')),


                  ]),
                  DataRow(cells: [
                    DataCell(Text('Anam')),
                    DataCell(Text('23')),
                    DataCell(Text('Student',style: TextStyle(color: Color(0xff2ecc71)),)),
                    DataCell(Text('EEE ')),
                    DataCell(Text('Bangladesh')),


                  ]),
                  DataRow(cells: [
                    DataCell(Text('Anam')),
                    DataCell(Text('24',style: TextStyle(color: Color(0xff2ecc71)),)),
                    DataCell(Text('Student')),
                    DataCell(Text('Computer ',style: TextStyle(color: Color(0xff2ecc71)),)),
                    DataCell(Text('Bangladesh')),


                  ]),

                  DataRow(cells: [




                    DataCell(Text('Anam')),
                    DataCell(Text('24')),
                    DataCell(Text('Student')),
                    DataCell(Text('ENT ')),
                    DataCell(Text('Bangladesh')),


                  ]),
                  DataRow(cells: [
                    DataCell(Text('Anam')),
                    DataCell(Text('16')),
                    DataCell(Text('Student')),
                    DataCell(Text('Computer ')),
                    DataCell(Text('Bangladesh')),


                  ]),
                  DataRow(cells: [
                    DataCell(Text('Faruk')),
                    DataCell(Text('23')),
                    DataCell(Text('Student')),
                    DataCell(Text('EEE ')),
                    DataCell(Text('Pakistan')),


                  ]),
                  DataRow(cells: [
                    DataCell(Text('Roky')),
                    DataCell(Text('19')),
                    DataCell(Text('Student')),
                    DataCell(Text('CSE ')),
                    DataCell(Text('Bangladesh')),


                  ]),
                  DataRow(cells: [
                    DataCell(Text('Abir')),
                    DataCell(Text('22')),
                    DataCell(Text('Student')),
                    DataCell(Text('Telecome ')),
                    DataCell(Text('Bangladesh')),


                  ]),
                  DataRow(cells: [
                    DataCell(Text('Kobir')),
                    DataCell(Text('32')),
                    DataCell(Text('Student')),
                    DataCell(Text('Cvil ')),
                    DataCell(Text('Bangladesh')),


                  ]),
                  DataRow(cells: [
                    DataCell(Text('Rofik')),
                    DataCell(Text('44')),
                    DataCell(Text('Student')),
                    DataCell(Text('ENT ')),
                    DataCell(Text('Bangladesh')),


                  ]),
                  DataRow(cells: [
                    DataCell(Text('SAKIB')),
                    DataCell(Text('24')),
                    DataCell(Text('Student')),
                    DataCell(Text('Cvil ')),
                    DataCell(Text('Bangladesh')),


                  ]),
                  DataRow(cells: [
                    DataCell(Text('snam')),
                    DataCell(Text('23')),
                    DataCell(Text('Student')),
                    DataCell(Text('EEE ')),
                    DataCell(Text('India')),


                  ]),



                ],
              ),
            ),
            ],
          ),
        ),
      ),

    );
  }
}


