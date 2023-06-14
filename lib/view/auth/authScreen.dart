import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = "/auth-screen";

  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLoginEnabled = false;

  @override
  Widget build(BuildContext context) {
    // Navigator.pushNamed(context, routeName)
    return Scaffold(
      appBar: AppBar(
        title: Text("Amazon Clone"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 110,
              child: isLoginEnabled
                  ? Column(
                      children: [
                        Text(
                          "Sign in with your email and password.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sign in",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password.",
                                style: TextStyle(fontSize: 17),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Email",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                          ),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                          ),
                        ),
                        SizedBox(height: 10),
                        CheckboxListTile(
                          value: true,
                          onChanged: (value) {},
                          title: Text("Show Password"),
                        ),
                        CheckboxListTile(
                          value: true,
                          onChanged: (value) {},
                          title: Text("Keep signed in."),
                        ),
                        InkWell(
                          onTap: () {
                            print("Click");
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 2 - 40,
                                vertical: 20),
                            decoration:
                                BoxDecoration(color: Colors.orangeAccent),
                            child: Text("Sign in"),
                          ),
                        ),
                        SizedBox(height: 20),
                        Divider(thickness: 1),
                        SizedBox(height: 6),
                        Text("New To Amazon Clone"),
                        SizedBox(height: 15),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isLoginEnabled = false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 2 - 95,
                                vertical: 20),
                            decoration:
                                BoxDecoration(color: Colors.orange[200]),
                            child: Text("Create a new account"),
                          ),
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text("Conditions of use Privacy Notice"))
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Create Account",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Your Name",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Email",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Password must be atleast 6 character"),
                          ],
                        ),
                        SizedBox(height: 10),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Re-enter Password",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                          ),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            print("Click");
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 2 - 80,
                                vertical: 20),
                            decoration:
                                BoxDecoration(color: Colors.orangeAccent),
                            child: Text(
                              "Create Account",
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Divider(thickness: 1),
                        SizedBox(height: 6),
                        Text("Already a Customer"),
                        SizedBox(height: 15),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isLoginEnabled = true;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 2 - 40,
                                vertical: 20),
                            decoration:
                                BoxDecoration(color: Colors.orange[200]),
                            child: Text("Sign In"),
                          ),
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                                "By creating an account you agree Amazon's Clone's Condition of Use andPrivacy Notice"))
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
