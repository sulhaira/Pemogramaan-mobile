import 'package:flutter/material.dart';
import 'package:sulhairah_2009106026/halaman3.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  Widget eskrim2() {
    return Container(
      width: 200,
      height: 190,
      margin: EdgeInsets.only(top: 61),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/eskrim2.png'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 106, 124, 123),
        title: Text(
          "Ice Cream Store",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF023E4A),
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 217, 236, 236),
      body: ListView(children: [
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 30,
            width: 20,
          ),
          Row(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    eskrim2(),
                    MyButton(),
                  ],
                ),
              )
            ],
          ),
        ]),
      ]),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return Halaman3();
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
          "Pesan",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
