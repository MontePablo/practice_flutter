import 'package:flutter/material.dart';
import 'package:practice_flutter/models/dummy_data.dart';
import 'package:practice_flutter/widgets/item_widget.dart';
void main(){
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter is fun!"),backgroundColor: Colors.amber,),
        body: Column(
          children: [
            Container(
              child: Text("this is demo"),
              decoration: BoxDecoration(color: Colors.blue,shape: BoxShape.circle,),
            ),
            Container(
              child: Icon(Icons.cabin),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(children: [
                Icon(Icons.cable_sharp),
                Icon(Icons.confirmation_num_sharp),
                Icon(Icons.cable_sharp),
                Icon(Icons.confirmation_num_sharp),
              ],),
            ),
            Stack(children: [
              Container(color: Colors.blue,child: Text("container"),width: 100,height: 100,),
              Positioned(child: Icon(Icons.access_alarms),left: 50,right: 50,),
            ],),
            Container(
              height: 450,
              width: 400,
              child: ListView.builder(
                itemCount: DummyDatas().items.length,
                itemBuilder: (context, index){
                  return ItemWidget(
                      item: DummyDatas().items[index]
                  );
                }
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){

          },
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile'),

        ],),
        drawer: Drawer(
            child: Column(children: [
              Text("Logout"),
              Text("profile"),
            ],)
        ),
      ),
    );
  }
}
