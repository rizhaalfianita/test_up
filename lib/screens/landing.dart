import 'package:flutter/material.dart';
import 'package:movie_catalog/constants.dart';
import 'package:movie_catalog/screens/home.dart';

class Landing extends StatefulWidget {
  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  final String nama = "Rizha Alfianita";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            SizedBox(height: 250),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 5),
                  Text("movio.",
                      style: TextStyle(
                        fontFamily: 'Poppins-SemiBold',
                        fontSize: 30,
                        color: darkGrey,
                      )),
                  SizedBox(height: 15),
                  Text("Lorem ipsum dolor sit amet.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins-Light',
                        fontSize: 20,
                        color: lightGrey,
                      )),
                  SizedBox(height: 35),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: darkBlue,
                            minimumSize: const Size.fromHeight(55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => Home(nama: nama),
                            ));
                          },
                          child: Text("ENTER",
                              style: TextStyle(
                                fontFamily: 'Poppins-Regular',
                                fontSize: 18,
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
