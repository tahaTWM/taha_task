import './bloodtestDetails.dart';
import 'package:flutter/material.dart';

class BoldCheck extends StatefulWidget {
  @override
  _BoldCheckState createState() => _BoldCheckState();
}

class _BoldCheckState extends State<BoldCheck> {
  bool _obscureText = true;
  TextEditingController _textEditingControllerUsername =
      TextEditingController();

  TextEditingController _textEditingControllerPassword =
      TextEditingController();
  @override
  void initState() {
    super.initState();
    _textEditingControllerUsername.text = "admin";
    _textEditingControllerPassword.text = "admin";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("asset/logo2.jpg"),
            ),
            Divider(
              color: Colors.grey,
              height: 10,
            ),
            Text(
              'يرجى تسجيل الدخول لمشاهدة\"',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              '\"وتحميل نتائج التحليل كلملة',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              // ignore: deprecated_member_use
              overflow: Overflow.visible,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 230,
                  width: MediaQuery.of(context).size.width - 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 17,
                        offset: Offset(3, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          controller: _textEditingControllerUsername,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14.0),
                            prefixIcon: Icon(
                              Icons.account_circle_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            hintText: 'Enter your Email',
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 10,
                        indent: 50,
                        endIndent: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextFormField(
                          controller: _textEditingControllerPassword,
                          obscureText: _obscureText,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14.0),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              size: 30,
                              color: Colors.black,
                            ),
                            hintText: 'Enter your Password',
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Icon(
                                _obscureText
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                semanticLabel: _obscureText
                                    ? 'show password'
                                    : 'hide password',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -35,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(55, 197, 208, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(55, 197, 208, 1),
                          spreadRadius: 5,
                          blurRadius: 17,
                          offset: Offset(3, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                      onPressed: () {
                        if (_textEditingControllerUsername.text == "admin" &&
                            _textEditingControllerPassword.text == "admin") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BloodTestDetails()));
                        }
                      },
                      child: Text(
                        "تسجيل",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
