import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

void main() async{
  List data = await getData();
 // String myData = data[0]['title'];
  print(data[0]['address']['city']);
  runApp(new MaterialApp(
    title: 'Muhammed Essa',
    home: new Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: new Text('${data[0]['name']}'),
      ),
      body: new Center(

        child: new Column(

          children: <Widget>[
            new Padding(padding: EdgeInsets.only(top: 44.0)),
            new Text('Name : ${data[0]['name']}',
            style: TextStyle(
              fontSize: 33.0,
              color: Colors.deepPurple,
              fontStyle: FontStyle.italic
            ),
            ),
            new Text('Username : ${data[0]['username']}',
              style: TextStyle(
                  fontSize: 33.0,
                  color: Colors.deepPurple,
                  fontStyle: FontStyle.italic
              ),
            ),
            new Text('Email : ${data[0]['email']}',
              style: TextStyle(
                  fontSize: 33.0,
                  color: Colors.deepPurple,
                  fontStyle: FontStyle.italic
              ),
            ),
            new Text('street : ${data[0]['address']['street']}',
              style: TextStyle(
                  fontSize: 33.0,
                  color: Colors.deepPurple,
                  fontStyle: FontStyle.italic
              ),
            ),
            new Text('suite : ${data[0]['address']['suite']}',
              style: TextStyle(
                  fontSize: 33.0,
                  color: Colors.deepPurple,
                  fontStyle: FontStyle.italic
              ),
            ),
            new Text('city : ${data[0]['address']['city']}',
              style: TextStyle(
                  fontSize: 33.0,
                  color: Colors.deepPurple,
                  fontStyle: FontStyle.italic
              ),
            ),

            new Text('lat : ${data[0]['address']['geo']['lat']}',
              style: TextStyle(
                  fontSize: 33.0,
                  color: Colors.deepPurple,
                  fontStyle: FontStyle.italic
              ),
            ),
            new Text('lng : ${data[0]['address']['geo']['lng']}',
              style: TextStyle(
                  fontSize: 33.0,
                  color: Colors.deepPurple,
                  fontStyle: FontStyle.italic
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}

Future<List> getData() async{
  String myUrl = 'https://jsonplaceholder.typicode.com/users';
  http.Response response = await http.get(myUrl);
  return json.decode(response.body);
}


























//Future<Null>   showMoreInfo(BuildContext context ,String value
//    ,String value2,String value3,String value4) async{
//
//  return showDialog<Null>(
//    context: context,
//    barrierDismissible: false, // user must tap button!
//    builder: (BuildContext context) {
//      return new AlertDialog(
//        title: new Text('$value2'),
//        content: new SingleChildScrollView(
//          child: new ListBody(
//            children: <Widget>[
//              new Text('$value4'),
//              new Text('user id : $value3'),
//              new Text('user id : $value'),
//
//            ],
//          ),
//        ),
//        actions: <Widget>[
//          new FlatButton(
//            child: new Text('Regret'),
//            onPressed: () {
//              Navigator.of(context).pop();
//            },
//          ),
//        ],
//      );
//    },
//  );
//
//}
















//child: new ListView.builder(
//
//itemCount: data.length ,
//itemBuilder: (BuildContext context , int position){
//
//if(position.isOdd) return new Divider();
//final newPosition = position ~/ 2;
//return new ListTile(
//
//title: new Text('${data[newPosition]['title']}',
//style: TextStyle(
//color: Colors.deepPurpleAccent,
//fontSize: 22.0,
//),
//),
//subtitle:new Text('${data[newPosition]['body']}',
//style: TextStyle(
//color: Colors.deepPurpleAccent,
//fontSize: 14.0,
//),
//),
//leading: new CircleAvatar(
//child: new Text('P ${data[newPosition]['id']}'),
//backgroundColor: Colors.pink,
//foregroundColor: Colors.white,
//
//),
//onTap: ()   { showMoreInfo(
//context ,
//'${data[newPosition]['id']}',
//'${data[newPosition]['title']}',
//'${data[newPosition]['userId']}',
//'${data[newPosition]['body']}');  }
//);
//
//}
//),





//        child:new Text('data : $myData',
//          style: TextStyle(
//            fontStyle: FontStyle.italic,
//            fontSize: 16.0,
//            color: Colors.pink
//          ),
//        ),