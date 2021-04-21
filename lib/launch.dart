import 'package:flutter/material.dart';
import 'package:sekolah_musik_app/registrasi.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/img/logo1.png'),
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {/* Write listener code here */},
            child: Icon(
              Icons.menu,
              color: Colors.grey, // add custom icons also
            ),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 40.0,
                  )),
            )
          ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: Image.asset('assets/img/gambar1.png'),
              ),
              Container(
                margin: EdgeInsets.only(top: 60, right: 45, left: 45),
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Belajar musik, tanpa ragu, langsung bisa ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "hanya di MUZZEZ SCHOOL",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                margin: EdgeInsets.only(right: 20),
                color: Color(0xFFE72020),
              ),
              GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    width: MediaQuery.of(context).size.width * 0.75,
                    padding: EdgeInsets.all(7),
                    margin: EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_add_alt,
                          size: 25,
                        ),
                        Text(
                          '  Berlangganan Muzzez School',
                          style: TextStyle(
                            color: Color(0xFFB40284A),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.28,
                padding: EdgeInsets.all(20),
                child: Image.asset('assets/img/group8.png'),
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              )
            ],
          ),
        ));
  }
}

class OutlineBtn extends StatefulWidget {
  final String btnText;
  OutlineBtn({this.btnText});

  @override
  _OutlineBtnState createState() => _OutlineBtnState();
}

class _OutlineBtnState extends State<OutlineBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(50),
      ),
      width: MediaQuery.of(context).size.width * 0.75,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person_add_alt,
            size: 20,
          ),
          Text(
            widget.btnText,
            style: TextStyle(
              color: Color(0xFFB40284A),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
