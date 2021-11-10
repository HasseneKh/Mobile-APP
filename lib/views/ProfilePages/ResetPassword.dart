import 'package:flutter/material.dart';

class RestPassword extends StatefulWidget {
  RestPassword({Key? key}) : super(key: key);

  @override
  _RestPasswordState createState() => _RestPasswordState();
}

class _RestPasswordState extends State<RestPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            color: Colors.black,
            // decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //   begin: Alignment.topRight,
            //   end: Alignment.bottomLeft,
            //   colors: [
            //     Colors.orange,
            //     Colors.black,
            //   ],
            // )),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title
                Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => setState(() {
                            Navigator.pop(context);
                          }),
                          child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 15),
                              child: Icon(
                                Icons.arrow_back_rounded,
                                size: 28,
                                color: Colors.white,
                              )),
                        ),
                        Text("Reset Password",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins')),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }

  Widget divider() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
      child: new Divider(
        height: 0.1,
        color: Colors.grey,
      ),
    );
  }
}
