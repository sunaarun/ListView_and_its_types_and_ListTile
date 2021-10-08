import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyListView()
    );
  }
}
List<String> listItems = [
  "One",
  "Two",
  "Three",
  "Four",
  "Five",
  "Six",
  "Seven",
  "Eight",
  "Nine",
  "Ten",
];
class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('ListView Example'),),

      // body: ListView.custom(childrenDelegate: MyCustomDelegate())
      body: ListView.builder(
          itemCount: listItems.length,
          itemBuilder: (context, index){
            return ListTile(
              // tileColor: Colors.greenAccent,
              leading: Icon(Icons.person,size: 50, color: Colors.pink,),
              title: Text(listItems[index],),
              subtitle: Text('subtitle $index'),
              trailing: CircleAvatar(backgroundColor: Colors.amber,),
              onTap: (){
                print("Tapped");
              },
            );
          }),
    );
  }
  build_listView(){
    return  ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Text('1' , style: TextStyle(fontSize: 20),),
          Text('2' , style: TextStyle(fontSize: 20),),
          Text('3' , style: TextStyle(fontSize: 20),),
          Text('4' , style: TextStyle(fontSize: 20),),
          Text('5' , style: TextStyle(fontSize: 20),),
        ]
    );
  }
  build_ListView_separated(){
    return ListView.separated(
        itemBuilder: (context, index){
          return Text(listItems[index], style: TextStyle(fontSize: 20),);
        },
        separatorBuilder: (context, index)
        {
          return Divider();
        },

        itemCount: listItems.length);
  }
}
