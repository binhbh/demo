import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo/ForgotPassword.dart';
import 'package:flutter_demo/main.dart';
import 'package:flutter_demo/mandangky.dart';

class MyStatefulWidget1 extends StatelessWidget {
  MyStatefulWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(title:   Text(_title)),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  FocusNode passNode = FocusNode();
  late FocusNode userNode;

  @override
  void initState() {
    userNode = FocusNode();
    userNode.addListener(() {
      setState(() {

      });
    });
    super.initState();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  //tạo node

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Image.network(
                    'https://media.istockphoto.com/vectors/cartoon-goldfish-in-fishbowl-vector-vector-id847259984?k=20&m=847259984&s=612x612&w=0&h=5FQ7y2w8XgNKcug8plFL3eftFcpSMgUOrcVFx_B37Ig=')),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                      print('1111');
                    },
                    child: Visibility(
                        visible: userNode.hasFocus, child: Icon(Icons.person,color: Colors.red,)),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      focusNode: userNode,
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Insert your message",
                        labelText: 'User Name',
                        prefixIcon: Visibility(
                            visible: userNode.hasFocus, child: Icon(Icons.person)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                focusNode: passNode,
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Insert your message",
                  labelText: 'Password',
                  prefixIcon:
                  passNode.hasFocus ? null : Icon(Icons.vpn_key_rounded),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: TextButton(
                child: Text(
                  'Forgot Password',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => MyStatefulWidget3()));
                },
              ),
            ),
            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: Text('Login'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            MyHomePage()));
                  },
                )),
            Row(
              children: <Widget>[
                Text('Does not have account?'),
                TextButton(
                  child: Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            MyStatefulWidget2()));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
