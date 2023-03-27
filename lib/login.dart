import 'package:flutter/material.dart';
import 'package:lti/routes.dart';

class LoginPage extends  StatefulWidget{

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name="";

  final _formKey=GlobalKey<FormState>();

  moveToHome(BuildContext context)async {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("LTIMindtree")
      ),
      body:Center(
        child:Form(
          key:_formKey,
          child:Column(
            children: [
              Image.asset("assets/images/login.png",
                  fit:BoxFit.cover
              ),
              SizedBox(
                height:20.0,
              ),
              Text("Welcome...$name",
              style:TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
              SizedBox(
                height:20.0,
              ),
              Padding(
               padding:const EdgeInsets.symmetric(vertical:20,horizontal:40),
                child:Column(children:[
                  TextFormField(
                    decoration:InputDecoration(
                      hintText:"Enter Username",
                      labelText:"Username",

                    ) ,
                    validator: (value){
                      if(value!.isEmpty){
                        return "username can not be empty";
                      }
                      return null;
                    },
                    onChanged: (value){
                      name=value;
                      setState(() {

                      });
                    },


                  ),
                  TextFormField(
                    obscureText: true,
                    decoration:InputDecoration(

                      hintText:"Enter Password",
                      labelText:"Password",

                    ) ,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password can not be empty";
                      }

                         else if(value.length<6){
                          return "password should be grater than 5";
                            }
                            return null;
                      return null;
                    }
                  ),
                  SizedBox(
                    height:20.0,
                  ),
                  InkWell(
                    onTap: ()=>moveToHome(context),
                  child:Container(
                    width:100,
                    height:50,
                   // color:Colors.deepPurple,
                    alignment: Alignment.center,
                    child:Text("Login",
                    style:TextStyle(
                      color:Colors.white, fontWeight:FontWeight.bold,fontSize: 18
                    )),
                    decoration: BoxDecoration(
                      color:Colors.deepPurple,
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                  )
                  // ElevatedButton(child:Text("Log in.."),
                  // onPressed:(){
                  //
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //
                  // },)
                ])
              )
            ],
          ),
      ),
      ),
      //drawer: Drawer(),
    );
  }
}