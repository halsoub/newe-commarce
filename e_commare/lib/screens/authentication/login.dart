import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/screens/authentication/forgotpassword.dart';
import 'package:e_commare/screens/authentication/signup.dart';
import 'package:e_commare/screens/home/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,

        backgroundColor: darkWhite,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height * 0.09),
              Center(child: Text("E-Commerce", style: TextStyle(color: green, fontSize: fontxl))),
              SizedBox(height: height * 0.10),

              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign In",
                        style: TextStyle(
                          color: green,
                          fontWeight: FontWeight.w700,
                          fontSize: fontmd,
                        ),
                      ),
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(fontSize: fontmd, color: gray),
                          // hintText: "Email",
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: gray)),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: green)),
                        ),
                        validator: (value) {
                          // if (value == null || value.isEmpty) {
                          //   return 'Please enter your name';
                          // } else if (!RegExp(
                          //         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+\.[a-zA-Z]+")
                          //     .hasMatch(value)) {
                          //   return 'Invalid email format';
                          // }
                          return null;
                        },
                        onSaved: (value) {},
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(fontSize: fontmd, color: gray),
                          // hintText: "Enter Password",
                          // suffix: const Icon(Icons.visibility_off),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: gray)),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: green)),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword ? Icons.visibility_off : Icons.visibility,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {});
                              Navigator.of(
                                context,
                              ).push(MaterialPageRoute(builder: (context) => ForgotPassword()));
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: green,
                                fontSize: fontsm,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Center(
                        child: SizedBox(
                          width: width * 0.9,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              backgroundColor: green,
                              foregroundColor: white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => HomeScreen()),
                                );
                              }
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(fontSize: fontmd, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.04),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Or sign in with",
                    style: TextStyle(
                      fontSize: fontsm,
                      color: lightGray,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: height * 0.03),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        "https://ijtechnology.net/demo/devkit/assets/assets/images/google.png",
                      ),
                      Image.network(
                        "https://ijtechnology.net/demo/devkit/assets/assets/images/facebook.png",
                      ),
                      Image.network(
                        "https://ijtechnology.net/demo/devkit/assets/assets/images/twitter.png",
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "No account yet?",
                        style: TextStyle(
                          fontSize: fontsm,
                          color: lightGray,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {});
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SignUp()),
                          );
                        },
                        child: Text(
                          " Create one",
                          style: TextStyle(
                            color: green,
                            fontSize: fontsm,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.05),
                  InkWell(
                    onTap: () {
                      // Navigator.pop(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const onbo()),
                      // );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back, color: green),
                        Text(
                          " Back",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: green,
                            fontSize: fontmd,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
