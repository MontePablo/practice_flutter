import 'package:flutter/material.dart';
import 'package:practice_flutter/models/item.dart';

class ItemWidget extends StatelessWidget{
  final Item item;
  const ItemWidget({super.key, required this.item}):assert(item!=null);
  @override
  Widget build(BuildContext buildContext){
    return Card(
      child: ListTile(
        onTap: (){
          print("${item.name} ");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
                    item.price,
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

      ),
    );
  }
}