import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool _obscureTextPassword = true;
  bool _obscureTextConfirmationPassword = true;

  Future<void> _signup() async {
    if (_passwordController.text != _confirmPasswordController.text) {
      return;
    }
    try {
      await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> _googleSignIn() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        // The user canceled the sign-in
        return;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _auth.signInWithCredential(credential);
      // Navigate to home screen or show success message
    } catch (e) {
      // Handle error
      if (kDebugMode) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/rectangle.png',
                  height: 330,
                  width: 352,
                ),
                const SizedBox(height: 20),
                Container(
                  height: 60,
                  width: 352,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 60,
                  width: 352,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: _obscureTextPassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureTextPassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureTextPassword = !_obscureTextPassword;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 60,
                  width: 352,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: _confirmPasswordController,
                    obscureText: _obscureTextConfirmationPassword,
                    decoration: InputDecoration(
                      hintText: 'Konfirmasi Password',
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureTextConfirmationPassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureTextConfirmationPassword =
                                !_obscureTextConfirmationPassword;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: _signup,
                  child: Container(
                    height: 60,
                    width: 352,
                    decoration: BoxDecoration(
                      color: Colors.blue[500],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Mendaftar',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: _googleSignIn,
                  child: Container(
                    height: 60,
                    width: 352,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.red,
                        )),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 33,
                              width: 33,
                              child: Image.asset(
                                'assets/icons/google.png',
                              ),
                            ),
                            const SizedBox(
                              width: 101,
                            ),
                            const Text(
                              ' Google',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Sudah punya akun? silahkan'),
                    TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => LoginPage()),
                        // );
                        Get.toNamed('loginpage');
                      },
                      child: Text(
                        'masuk',
                        style: TextStyle(color: Colors.blue[500]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
