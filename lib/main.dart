import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var UsControl = TextEditingController();
  var PwControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(
            child: Text(
          "LOGIN PAGE",
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        )),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                children: [
                  Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: UsControl,
                    decoration: InputDecoration(
                      label: Text(
                        "Username",
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: PwControl,
                    decoration: InputDecoration(label: Text("Password")),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var Us = UsControl.text.toString();
                      var Pw = PwControl.text.toString();
                      if (Us != "" && Pw != "") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => profilepage(MUs: Us,MPw: Pw,)),
                        );
                      } else {
                        setState(() {});
                      }
                    },
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class profilepage extends StatefulWidget {
  const profilepage({super.key, this.MUs, this.MPw});
  final MUs, MPw;

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile Page",
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text("Username : ${widget.MUs}",style: TextStyle(fontSize: 30,),),
                Text("Password : ${widget.MPw}",style: TextStyle(fontSize: 30,),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
