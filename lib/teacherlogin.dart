import 'package:flutter/material.dart';
import 'teachersignup.dart';

class TeacherLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teacher Login',style: TextStyle(color: Colors.white),),
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios ,color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage('assets/images/teacher.jpg'), // Add your student image asset here
            ),
            const SizedBox(height: 20),

            const SizedBox(height: 20),
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
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle sign-in logic here
              },
              child: const Text('Sign In'),
            ),
            const SizedBox(height: 20),
            const Text('If account do not exist?'),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TeacherSignupScreen()),
                );
              },
              child: const Text('Sign Up',style: TextStyle(decoration: TextDecoration.underline),),
            ),
          ],
        ),
      ),
    );
  }
}
