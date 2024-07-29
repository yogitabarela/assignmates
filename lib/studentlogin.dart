import 'package:flutter/material.dart';
import 'studentsignup.dart';

class StudentLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Login',style: TextStyle(color: Colors.white),),
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios ,color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            margin: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 120,),
                CircleAvatar(
                 backgroundImage: AssetImage('assets/images/th(4).jpeg'),
                  radius: 100,
                ),
                const SizedBox(height: 40),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Handle sign-in logic here
                  },
                  child: const Text('Sign In'),
                ),
                const SizedBox(height: 20),
                const Text('If account does not exist?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StudentSignupScreen()),
                    );
                  },
                  child: const Text('Sign Up',style: TextStyle(decoration: TextDecoration.underline),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
