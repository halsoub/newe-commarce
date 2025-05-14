import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/screens/authentication/login.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: darkWhite,
      body: Column(
        children: [
          SizedBox(height: height * 0.1),
          Center(child: Text("E-Commerce", style: TextStyle(color: green, fontSize: fontxl))),
          SizedBox(height: height * 0.09),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: fontmd, color: gray),
                    labelText: "Email",
                    hintText: "robert.cooper.grier@examplepetstore.com",
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: gray)),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: green)),
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
                SizedBox(height: height * 0.01),
                Text(
                  "We will send the instruction to reset your password through the email",
                  style: TextStyle(fontSize: fontsm, color: lightGray),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height * 0.04),
                SizedBox(
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
                    child: Text(
                      'Reset Password',
                      style: TextStyle(fontSize: fontmd, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.09),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back, color: green, size: fontmd),
                      Text(
                        " Back to login",
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
          ),
        ],
      ),
    );
  }
}
