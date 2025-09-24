import 'package:flutter/material.dart';
import 'package:movie_app/screens/home_page.dart';
import 'package:movie_app/utils/custom_colors.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/images/logo.png'),
                Text(
                  'Welcome Back',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  'Log in to your account using email or\nsocial networks',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey.shade800),
                ),
                SizedBox(height: 30),
                Container(
                  width: size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/Apple.png'),
                      SizedBox(width: 10),
                      Text('Login with Apple', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/google.png'),
                      SizedBox(width: 10),
                      Text('Login with Google', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 70,
                      height: 1,
                      decoration: BoxDecoration(color: Colors.grey.shade300),
                    ),
                    Text(
                      'Or continue with social account',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                    Container(
                      width: 70,
                      height: 1,
                      decoration: BoxDecoration(color: Colors.grey.shade300),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    label: Text('Mobile Number'),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off_outlined),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    label: Text('Password'),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: CustomColors.primaryColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Container(
                    width: size.width,
                    height: 60,
                    decoration: BoxDecoration(
                      color: CustomColors.primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: "Didn't have an account? ",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    children: [
                      TextSpan(
                        text: 'Register',
                        style: TextStyle(color: CustomColors.primaryColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
