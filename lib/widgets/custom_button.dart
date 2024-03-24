import 'package:flutter/material.dart';

class MyRoundButton extends StatelessWidget {
  const MyRoundButton({super.key, required this.title, this.loading=false, required this.onPress});
  final String title;
  final bool loading;
  final VoidCallback onPress;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10)
        ),
        height: 20,
        width: 200,
        child: Center(
            child: loading?const CircleAvatar():Text(title,style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
