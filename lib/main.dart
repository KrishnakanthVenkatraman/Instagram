import 'package:flutter/material.dart';
import 'package:insta_clone/facebook_login.dart';
import 'package:insta_clone/forget_password.dart';
import 'signup_page.dart';

//import 'package:http/http.dart' as http;

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      title: 'Instagram UI',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  String dropdownValue = 'English';

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  int buttonColor = 0xff26A9FF;

  bool inputTextNotNull = false;


  @override
  Widget build(BuildContext context) {

    double deviseWidth = MediaQuery.of(context).size.width;


    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF405de6),
                    Color(0xFF833ab4),
                    Color(0xFFe1306c),
                  ],
                ),
              ),
              child: ConstrainedBox(constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height -25,
              ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.topCenter,
                          child: DropdownButton<String>(
                            dropdownColor: Colors.white70,
                            value: dropdownValue,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 24,
                            elevation: 10,
                            style: TextStyle(color: Colors.black54),
                            underline: Container(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue ?? '';
                              });
                            },
                            items: <String>['English', 'Arabic', 'Italian', 'French']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value, style: TextStyle(fontSize: 16),),
                              );
                            }).toList(),
                          )
                      ),
                      Column(

                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [Image.asset('assets/insta.png',
                          height: deviseWidth * .20,

                        ),

                          SizedBox(height: deviseWidth * .05,),
                          Container(
                            width: deviseWidth * .90,
                            height: deviseWidth * .14,
                            decoration: BoxDecoration(
                              color: Color(0xffE8E8E8),
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Center(
                                child: TextField(
                                  onChanged: (text){
                                    setState(() {
                                      if(usernameController.text.length >= 2 && passwordController.text.length >= 2){
                                        inputTextNotNull = true;
                                      }else{
                                        inputTextNotNull = false;
                                      }
                                    });
                                  },
                                  controller: usernameController,
                                  style: TextStyle(
                                    fontSize: deviseWidth * .040,
                                  ),
                                  decoration: InputDecoration.collapsed(
                                    hintText: 'Phone number , email or username',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: deviseWidth * .04,),
                          Container(
                            width: deviseWidth * .90,
                            height: deviseWidth * .14,
                            decoration: BoxDecoration(
                              color: Color(0xffE8E8E8),
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Center(
                                child: TextField(
                                  onChanged: (text){
                                    setState(() {
                                      if(usernameController.text.length >= 2 && passwordController.text.length >= 2){
                                        inputTextNotNull = true;
                                      }else{
                                        inputTextNotNull = false;
                                      }
                                    });
                                  },
                                  controller: passwordController,
                                  obscureText: true,
                                  style: TextStyle(
                                    fontSize: deviseWidth * .040,
                                  ),
                                  decoration: InputDecoration.collapsed(
                                    hintText: 'Password',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: deviseWidth * .04,),
                          inputTextNotNull?
                          GestureDetector(
                            onLongPressStart: (s){
                              setState(() {
                                buttonColor = 0xff78C9FF;
                              });
                            },
                            onLongPressEnd: (s){
                              setState(() {
                                buttonColor = 0xff26A9FF;
                              });
                            },
                            onTap: (){
                              print('Sign In');
                            },

                            child: Container(
                              width: deviseWidth * .90,
                              height: deviseWidth * .14,
                              decoration: BoxDecoration(
                                color: Color(buttonColor),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                border: Border.all(color:Color(0xff78C9FF)),
                              ),
                              child: Center(
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: deviseWidth * .040,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ):
                          Container(
                            width: deviseWidth * .90,
                            height: deviseWidth * .14,
                            decoration: BoxDecoration(
                              color: Colors.transparent,

                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              border: Border.all(
                                color: Colors.black, // You can change this to a different border color
                                width: 2.0, // Adjust the border width if needed
                              ),

                            ),
                            child: Center(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: deviseWidth * .040,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: deviseWidth * .035,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Forgot your login details? ',
                                style: TextStyle(
                                  fontSize: deviseWidth * .035,
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ForgotUsernameOrPasswordPage()
                                      )
                                  );
                                },
                                
                                child: Text('Get help',
                                  style: TextStyle(
                                    fontSize: deviseWidth * .035,
                                    color: Color(0xff002588),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: deviseWidth * .040,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 1,
                                width: deviseWidth * .40,
                                color: Color(0xffA2A2A2),
                              ),
                              SizedBox(width: 10,),
                              Text('OR',
                                style: TextStyle(
                                  fontSize: deviseWidth * .040,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 1,
                                width: deviseWidth * .40,
                                color: Color(0xffA2A2A2),
                              ),
                            ],
                          ),
                          SizedBox(height: deviseWidth * .06,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/facebook1.png',
                                height: deviseWidth * .060,
                              ),

                              SizedBox(width: 5,),

                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()
                                      )
                                  );
                                },

                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Color(0xff1877f2),
                                      fontSize: deviseWidth * .040,
                                      fontWeight: FontWeight.w800
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            width: deviseWidth,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: deviseWidth,
                                  height: 1,
                                  color: Color(0xffA2A2A2),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Don't have an account? ",
                                      style: TextStyle(
                                        fontSize: deviseWidth * .040,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => SignupPage()),
                                        );
                                      },
                                      child: Text('Sign up',
                                        style: TextStyle(
                                          color: Color(0xff00258B),
                                          fontSize: deviseWidth * .040,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )],
                      ),

                    ]),
              ),
            ),
          ),
        ));
  }
}