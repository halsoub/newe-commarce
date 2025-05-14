import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/screens/authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _forgotpasswordController = TextEditingController();

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
              SizedBox(height: height * 0.09),

              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign up",
                        style: TextStyle(color: green, fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: gray)),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: green)),
                          labelStyle: TextStyle(fontSize: fontmd, color: gray),
                          labelText: "Email",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          } else if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+\.[a-zA-Z]+",
                          ).hasMatch(value)) {
                            return 'Invalid email format';
                          }
                          return null;
                        },
                        onSaved: (value) {},
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Name",
                          labelStyle: TextStyle(fontSize: fontmd, color: gray),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: gray)),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: green)),
                        ),
                        onSaved: (value) {},
                      ),
                      SizedBox(height: 16),

                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(fontSize: fontmd, color: gray),
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
                        onSaved: (value) {},
                      ),

                      SizedBox(height: height * 0.06),
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
                                _formKey.currentState!.save();
                                ScaffoldMessenger.of(
                                  context,
                                ).showSnackBar(const SnackBar(content: Text("SignUp")));
                              }
                            },
                            child: const Text(
                              'Registrer',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back, color: green),
                        Text(
                          "Back to login",
                          style: TextStyle(
                            fontSize: fontmd,
                            fontWeight: FontWeight.w600,
                            color: green,
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
