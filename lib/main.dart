import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      title: "Flutter Notifications",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _user = TextEditingController();
  TextEditingController _password = TextEditingController();

  List<String> _pets = ["Dogs, Cats, Tigers, Lions"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Layouts"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Text("Username"),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      controller: _user,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text("Password"),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      controller: _password,
                      obscureText: true,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () => print("Login ${_user.text}"),
                  child: Text("Login"),
                ),
              ),
              Card(
                elevation: 5,
                shadowColor: Colors.blue,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text("Hi Jay"),
                      Text("Do you love Flutter?"),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                shadowColor: Colors.blue,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text("Hi Sam"),
                      Text("Do you love Flutter?"),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                shadowColor: Colors.blue,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text("Hi Nav"),
                      Text("Do you love Flutter?"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: _pets.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(
                        _pets.elementAt(index),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
