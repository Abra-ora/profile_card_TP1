import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:random_avatar/random_avatar.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  
  String name = "Ibrahim Talbi";
  String email = "talbibrahim@gmail.com";
  String twitter = "@ibrahim_talbi";
  String website = "www.ibrahimtalbi.com";
  Widget? svgImage;

  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: "Profile Card",
        home:  Scaffold(
        appBar: AppBar(
          title: const Text('Profile card'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  width: 300,
                  height: 300,
                  decoration: const BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    textDirection: TextDirection.ltr,
                    children: [
                      const SizedBox(
                        height: 70,
                      ),
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Pacifico',
                        ),
                      ),

                      const Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                      Text(
                        email,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                      const Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),

                      Text(
                        twitter,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Pacifico',
                        ),
                      ),

                      const Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),

                      Text(
                        website,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                    ],
                  )),
              Positioned(
                top: -50,
                left: 100,
                child: randomAvatar(name,
                    trBackground: false, height: 100, width: 100),
              )
            ],
          ),
        )
      ),
    );
  }
}
