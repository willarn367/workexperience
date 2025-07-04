import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:namer_app/screens/dashboard.dart';
import '../screens/home.dart';
import '../screens/signup.dart';
import '../screens/terms_and_conditions.dart';

class Forgotmypassword extends StatefulWidget {
  const Forgotmypassword ({super.key});

  @override
  State<StatefulWidget> createState() => HomeState();
  }


class HomeState extends State<Forgotmypassword> {
  //const Home({super.key});
  bool _secureText = true;
  bool _nameValidate = true;
  bool _ageValidate = true;
  bool _emailValidate = true;
  bool _passwordValidate = true;
  bool _hasreadtc = false;
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

        

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        leadingWidth: 50,
        toolbarHeight: 50,
        title: Text(" Forgot my password", 
          style: TextStyle(
            fontFamily: "Space Mission",
            fontSize: 30,
            color: const Color.fromARGB(255, 20, 9, 118)),),
        leading: TextButton(onPressed:
        (){
          Navigator.pop(
            context,
            CupertinoPageRoute(builder: (context) => Home()));
        }, 
        child: Row(children: [
          Text(" "),
          Icon(Icons.arrow_back, color: Colors.black, size: 22,),
        ],
        )
        ),
        backgroundColor: Colors.lightBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.vertical(bottom: Radius.circular(15))
        ),
      ),
      body: Padding(padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(height: 50,),
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: "Your name",
              labelText: "Name",
              prefixIcon: Icon(Icons.person_outline, color: Color.fromARGB(225, 20, 9, 118)),
              hintStyle: TextStyle(fontFamily: "Roboto"),
              labelStyle: TextStyle(fontFamily: "Roboto", color: Color.fromARGB(225, 20, 9, 118)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              errorText: _nameValidate ? null : "Name is required",
            ),
            style: TextStyle(color: Color.fromARGB(225, 20, 9, 118), fontFamily: "Roboto"),
            keyboardType: TextInputType.name,
            keyboardAppearance: Brightness.dark,
            textInputAction: TextInputAction.next,
            maxLength: 25,
          ),
          SizedBox(height: 50,),
          TextField(
            controller: _ageController,
            decoration: InputDecoration(
              hintText: "Your age",
              labelText: "Age",
              prefixIcon: Icon(Icons.people_outlined, color: Color.fromARGB(225, 20, 9, 118)),
              hintStyle: TextStyle(fontFamily: "Roboto"),
              labelStyle: TextStyle(fontFamily: "Roboto", color: Color.fromARGB(225, 20, 9, 118)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              errorText: _ageValidate ? null : "Approximate age is required",
            ),
            style: TextStyle(color: Color.fromARGB(225, 20, 9, 118), fontFamily: "Roboto"),
            keyboardType: TextInputType.number,
            keyboardAppearance: Brightness.dark,
            textInputAction: TextInputAction.next,
            maxLength: 3,
          ),
          SizedBox(height: 50,),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              hintText: "Your email",
              labelText: "Email",
              hintStyle: TextStyle(fontFamily: "Roboto"),
              labelStyle: TextStyle(fontFamily: "Roboto", color: Color.fromARGB(225, 20, 9, 118)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              prefixIcon: Icon(Icons.email_outlined, color: Color.fromARGB(225, 20, 9, 118),),
              suffixIcon: IconButton(onPressed:(){
                _emailController.clear();
              },icon: Icon(Icons.clear)),
              errorText: _emailValidate ? null : "Email is required!",
            ),
            style: TextStyle(color: Color.fromARGB(225, 20, 9, 118), fontFamily: "Roboto"),
            keyboardType: TextInputType.emailAddress,
            keyboardAppearance: Brightness.dark,
            textInputAction: TextInputAction.next, 
          ),
          SizedBox(height: 70,),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              hintText: "Your new password",
              labelText: "New Password",
              hintStyle: TextStyle(fontFamily: "Roboto"),
              labelStyle: TextStyle(fontFamily: "Roboto", color: Color.fromARGB(225, 20, 9, 118)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              prefixIcon: Icon(Icons.lock_outline, color: Color.fromARGB(225, 20, 9, 118),),
              suffixIcon: IconButton(onPressed:(){
                setState(() {
                 _secureText = !_secureText;
                });
              },icon: Icon(Icons.visibility_off)),
              errorText: _passwordValidate ? null : "New Password is required!",
            ),
            style: TextStyle(color: Color.fromARGB(225, 20, 9, 118), fontFamily: "Roboto"),
            keyboardType: TextInputType.visiblePassword,
            keyboardAppearance: Brightness.dark,
            textInputAction: TextInputAction.done, 
            obscureText: _secureText,
          ),
          SizedBox(height: 70,),
          Row(children: [
            //IconButton(onPressed: (){}, icon: Icon( Icons.check_box_outline_blank_outlined)),
            Checkbox(value: _hasreadtc, onChanged: (value){
              _hasreadtc = value!;
              setState(() {
                
              });
            },
            checkColor: Colors.lightBlue,
            activeColor: Color.fromARGB(225, 20, 9, 118),
            ),
            TextButton(onPressed: (){
              Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => TCs())
              );
            }, 
              child: Text("I agree to the terms and conditions", 
                style: TextStyle(
                fontSize: 18, 
                color: Color.fromARGB(225, 20, 9, 128)),
            ))
          ]),
          
          SizedBox(height: 70,),
          ElevatedButton(onPressed: _hasreadtc ?() async{
            setState(() {
              //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Creating Your Account...", style: TextStyle(fontFamily: "Roboto",fontSize: 25,),), backgroundColor: Colors.black,));
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Your new password is $_passwordController", style: TextStyle(fontFamily: "Roboto",fontSize: 25,),), backgroundColor: Colors.black,));
              _nameController.text.isEmpty ? _nameValidate = false : _nameValidate = true;
              _ageController.text.isEmpty ? _ageValidate = false : _ageValidate = true;
              _emailController.text.isEmpty ? _emailValidate = false : _emailValidate = true;
              _passwordController.text.isEmpty ? _passwordValidate = false : _passwordValidate = true;
            });
            print("Name: ${_nameController.text}");
            print("Age: ${_ageController.text}");
            print("Email: ${_emailController.text}");
            print("Password: ${_passwordController.text}");
            await Future.delayed(const Duration(seconds: 3));
            Navigator.pop(
                  // ignore: use_build_context_synchronously
                  context,
                  CupertinoPageRoute(builder: (context) => Signup())
              );
          }:null, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(225, 20, 9, 118),
              foregroundColor: Colors.black,
              fixedSize: Size.fromWidth(280),
            ),
            child: Text(" Change Password", 
              style: TextStyle(
              fontFamily: "Space Mission", 
              fontSize: 25, 
              color: Colors.blue, 
              
            ),
            textAlign: TextAlign.justify,
            ),
          ),
        
        ]),
      ),
      
    );
  }
}