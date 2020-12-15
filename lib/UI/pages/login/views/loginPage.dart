import 'package:flutter/material.dart';
import 'package:helloworld/core/color.dart';
import 'package:helloworld/core/component/upPrimaryBotton.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //decoration: BoxDecoration(border: 1),
       // color: Colors.pink,
        padding: EdgeInsets.symmetric(horizontal: 16.0),

          child: ListView(

        children: <Widget>[
          Center(child:Image.asset('/image/logo.png', width: 200,),),
           SizedBox(height: 120.0,),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'username',
            ),
          ),
         
           SizedBox(height: 20.0,),
          
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
            SizedBox(height: 32.0,),
          AppPrimaryButton(
            onPressed: ()=>{print('object')} ,
            child: Text('LOGIN'),
             padding: EdgeInsets.symmetric(vertical: 24.0),
            //color: appPrimaryDarkColor,
            
          ),
            SizedBox(height: 16.0,),
        Center(child: Text('Forget password', 
        style: TextStyle(color: appPrimaryColor, decoration: TextDecoration.underline)),)//,
       // decoration:
            
        ],
      )),
    );
  }
}
