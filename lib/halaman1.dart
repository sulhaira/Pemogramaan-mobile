import 'package:flutter/material.dart';
import 'package:sulhairah_2009106026/halaman2.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 106, 124, 123),
          // leading: Icon(
          //   Icons.arrow_back_ios,
          //   color: Color(0xFF023E4A),
          // ),
          title: Text(
            "ICE CREAM STORE",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF023E4A),
            ),
          )),
      backgroundColor: Color.fromARGB(255, 217, 236, 236),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                margin: EdgeInsets.only(top: 71),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/icecreamstore.png"),
                  ),
                ),
              ),
              Text(
                "ICE CREAM STORE",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF023E4A),
                ),
              ),
              Text(
                "SELAMAT DATANG DAN SILAHKAN BERBELANJA DENGAN YANG MANIS-MANIS",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
                width: 20,
              ),
              MyButton(),
            ],
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (() {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return MainPage();
            }));
          }),
          child: Container(
            width: 100,
            height: 50,
            margin: EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFF023E4A),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "LOGIN",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
