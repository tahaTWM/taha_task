import 'package:flutter/material.dart';

class BloodTestDetails extends StatefulWidget {
  @override
  _BloodTestDetailsState createState() => _BloodTestDetailsState();
}

class _BloodTestDetailsState extends State<BloodTestDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                // ignore: deprecated_member_use
                overflow: Overflow.visible,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(31, 31, 35, 0.8),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(150),
                        bottomRight: Radius.circular(150),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 4.5,
                    child: Center(
                        child: Text("التحاليل",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold))),
                  ),
                  FractionalTranslation(
                    translation: Offset(0.0, 0.5),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.orange[200],
                          image: DecorationImage(
                              image: AssetImage("asset/logo.png")),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
            Text("سيف ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold)),
            Text("الجنس : ذكر",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                )),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 230,
              width: MediaQuery.of(context).size.width - 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(57, 199, 206, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 17,
                    offset: Offset(3, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: RaisedButton.icon(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        onPressed: () {
                          print('Button Clicked.');
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        label: Text(
                          'تحميل',
                          style: TextStyle(color: Colors.white, fontSize: 27),
                        ),
                        icon: Icon(
                          Icons.download_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        textColor: Colors.white,
                        splashColor: Colors.blue,
                        color: Colors.grey[900],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("تم رفع النتيجة",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w800)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(" الاسم الكامل : سيف بشار نبيل",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text("العمر : 30",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text("تاريخ الفحص : 2021- 02 - 29",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text("تاريخ التسليم المتوقع : 2021- 03 - 04",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text("النتيجة : ايجابية",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
