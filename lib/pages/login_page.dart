
import 'package:flutter/material.dart';
import 'package:practice_flutter/utils/routes.dart';
import 'package:practice_flutter/widgets/custom_button.dart';
void main(){
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Image.asset("assets/images/login.jpg",fit: BoxFit.fill,),
          ),
          Text("Welcome",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration:InputDecoration(
                    hintText: "Enter Username",
                    labelText: "username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration:InputDecoration(
                    hintText: "Enter Password",
                    labelText: "password",
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                      // Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));
                    },
                    style: TextButton.styleFrom(minimumSize: Size(60, 40)),
                    child: Text("Login")
                ),
                MyRoundButton(
                    title: "Signup",
                    onPress: (){

                    },
                 )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
