import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import '../screens/dashboard.dart';
import '../screens/forgotmypassword.dart';
import '../screens/signup.dart';

class Home extends StatefulWidget {
  const Home ({super.key});

  @override
  State<StatefulWidget> createState() => HomeState();
  }


class HomeState extends State<Home> {
  //const Home({super.key});
  bool _secureText = true;
  bool _nameValidate = true;
  bool _emailValidate = true;
  bool _passwordValidate = true;
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

        

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        leadingWidth: 50,
        toolbarHeight: 50,
        title: Text(" Login", 
          style: TextStyle(
            fontFamily: "Space Mission",
            fontSize: 40,
            color: const Color.fromARGB(255, 20, 9, 118)),),
        leading: TextButton(onPressed:
        (){
          Navigator.pop(
            context,
            CupertinoPageRoute(builder: (context) => Dashboard()));
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
              hintText: "Your email",
              labelText: "Email",
              prefixIcon: Icon(Icons.email_outlined),
              suffixIcon: IconButton(onPressed: (){
                _nameController.clear();
              }, icon: Icon(Icons.clear),),
              hintStyle: TextStyle(fontFamily: "Roboto"),
              labelStyle: TextStyle(fontFamily: "Roboto", color: Color.fromARGB(225, 20, 9, 118)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              errorText: _nameValidate ? null : "Email is required",
            ),
            style: TextStyle(color: Color.fromARGB(225, 20, 9, 118), fontFamily: "Roboto"),
            keyboardType: TextInputType.text,
            keyboardAppearance: Brightness.dark,
            textInputAction: TextInputAction.done,
            maxLength: 25,
          ),
          SizedBox(height: 50,),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              hintText: "Enter your email again",
              labelText: "Verify your email",
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
            textInputAction: TextInputAction.done, 
          ),
          SizedBox(height: 70,),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              hintText: "Your password",
              labelText: "Password",
              hintStyle: TextStyle(fontFamily: "Roboto"),
              labelStyle: TextStyle(fontFamily: "Roboto", color: Color.fromARGB(225, 20, 9, 118)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              prefixIcon: Icon(Icons.lock_outline, color: Color.fromARGB(225, 20, 9, 118),),
              suffixIcon: IconButton(onPressed:(){
                setState(() {
                 _secureText = !_secureText;
                });
              },icon: Icon(Icons.visibility_off)),
              errorText: _passwordValidate ? null : "Password is required!",
            ),
            style: TextStyle(color: Color.fromARGB(225, 20, 9, 118), fontFamily: "Roboto"),
            keyboardType: TextInputType.visiblePassword,
            keyboardAppearance: Brightness.dark,
            textInputAction: TextInputAction.done, 
            obscureText: _secureText,
          ),
          SizedBox(height: 70,),
          ElevatedButton(onPressed: (){ 
            setState(() {
              _nameController.text.isEmpty ? _nameValidate = false : _nameValidate = true;
              _emailController.text.isEmpty ? _emailValidate = false : _emailValidate = true;
              _passwordController.text.isEmpty ? _passwordValidate = false : _passwordValidate = true;
            });
            print("Email: ${_nameController.text}");
            print("Email repeated: ${_emailController.text}");
            print("Password: ${_passwordController.text}");
          }, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(225, 20, 9, 118),
              foregroundColor: Colors.black,
              fixedSize: Size.fromWidth(170),
            ),
            child: Text(" Login", 
              style: TextStyle(
              fontFamily: "Space Mission", 
              fontSize: 40, 
              color: Colors.blue, 
              
            ),
            
            ),
          ),
        SizedBox(height: 70,),
        TextButton(onPressed: (){
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => Signup()));
        }, 
          child: Text("CREATE AN ACCOUNT", 
          style: TextStyle(
            fontFamily: "Roboto", 
            fontSize: 20, color: Color.fromARGB(225, 20, 9, 128)),
            )
          ),
        SizedBox(height: 40,),
        TextButton(onPressed: (){
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => Forgotmypassword()));
        }, 
          child: Text("Forgot my Password", 
            style: TextStyle(
              fontSize: 20, 
              fontFamily: "Roboto", 
              color: Color.fromARGB(225, 20, 9, 128)),)),
        ],
      ),
      ),
    );
  }
}