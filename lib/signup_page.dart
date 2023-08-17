import 'package:flutter/material.dart';
import 'package:insta_clone/main.dart';


class SignupPage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/insta.png',
              height: 60,
            ),
          ),
        ),
        Stack(
          children: [
            CircleAvatar(
                radius: 64,
                backgroundImage:
                    NetworkImage('https://i.stack.imgur.com/l60Hf.png'))
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Sign up to see photos and videos from your friends.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    labelText: 'Full Name',
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                 
                  decoration: InputDecoration(
                    hintText: 'Username',
                    labelText: 'Username',
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Mobile Number or Email',
                    labelText: 'Mobile Number or Email',
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Sign up'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'By signing up, you agree to our Terms , Data Policy and Cookies Policy.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have an account?",
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Color(0xff00258B),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
   
  }
}

  
