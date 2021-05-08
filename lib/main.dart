import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My App",
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("My App"),
          ),
          body: getListView(),
        ));
  }

}

Widget getListView(){
  var items=List<String>.generate(50, (counter) => "items $counter");
  var listItems=items;
  var listview=ListView.builder(itemBuilder: (context,index){
    return ListTile(
      title: Text(listItems[index]),
    );
  }
  );
  return listview;
}