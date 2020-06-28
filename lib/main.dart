import 'package:flutter/material.dart';
main (){
  runApp(MyApp());
}

class MyApp  extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}
    class _MyApp extends State <MyApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home:Scaffold(
          backgroundColor: Colors.deepPurple,
          body: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 77,vertical: 55),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Text('Sign in',
                        style: TextStyle(
                            fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white
                        ),
                      ), Text('Login to your account',
                        style: TextStyle(
                            fontSize: 20,color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:BorderRadius.circular(15)
                ),
                //color: Colors.white,
                width: 350,
                height: 500,
                  margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(15),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 10,),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        icon: Icon(Icons.assignment_ind,color: Colors.blueGrey,),
                        hintText: ('Username or e-mail'),
                        labelStyle: TextStyle(), border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                      )
                      ),

                    ),
                    SizedBox(height: 20,),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        icon: Icon(Icons.vpn_key,color: Colors.blueGrey,),
                        hintText: ('password'),
                        labelStyle: TextStyle(),border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                        prefixIcon: Icon(Icons.remove_red_eye)
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 20,),
                        Text('Forget Password?',style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(width: 30,),
                        Checkbox(value: true, onChanged: null,),
                        Text('Keep me Signed')
                      ],
                    ),
                  RaisedButton(
                    color: Colors.deepPurple,
                    textColor: Colors.white,
                        onPressed: (){},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    padding: EdgeInsets.only(right: 120,left: 120),
                    child: Text('SIGN IN',
                      ),
                         // color: Colors.yellow,
                  ),
                    SizedBox(height: 20,),
                    Text('- - - - - - - - - - - - - - - - -   or   - - - - - - - - - - - - - - - - - - ',
                      ),
                    SizedBox(height: 20,),
                    RaisedButton(
                      color: Colors.blue.shade700,
                      textColor: Colors.white,
                      onPressed: (){},
                      padding: EdgeInsets.only(right: 80,left: 80),
                      child: Text('Login with FaceBook',
                      ),
                      // color: Colors.yellow,
                    ), RaisedButton(
                      color: Colors.deepOrange,
                      textColor: Colors.white,
                      onPressed: (){},
                      padding: EdgeInsets.only(right: 90,left: 90),
                      child: Text('LogIn with Google',
                      ),
                      // color: Colors.yellow,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Dont you have an account?',style: TextStyle(color: Colors.white70),),
                  Text(' Sign up Now!', style: TextStyle(color: Colors.yellow,fontSize: 17),)
                ],
              )
            ],
          ),
        )

    );

  }
    }
