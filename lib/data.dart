import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

class Dta extends StatefulWidget {
  const Dta({Key? key}) : super(key: key);

  @override
  State<Dta> createState() => _DtaState();
}

class _DtaState extends State<Dta> {

  final LocalStorage storagee = new LocalStorage('localstorage_app');
  @override
  Widget build(BuildContext context) {
    final name=storagee.getItem('name');
    print(name);
    return Scaffold(
      appBar: AppBar(
        title: Text('Past Calculation'),
      ),
      body:name==0?Container():ListView.builder(
      itemCount: name.length,
      itemBuilder: (context,index){
        print(name[index]);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(name[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.grey),),
        );
    }));
  }
}
