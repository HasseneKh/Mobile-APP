import 'package:flutter/material.dart';

import 'AccoutDetails.dart';
import 'FAQS.dart';
import 'TermsCondition.dart';

class ProfileMain extends StatefulWidget {
  ProfileMain({Key? key}) : super(key: key);

  @override
  _ProfileMainState createState() => _ProfileMainState();
}

class _ProfileMainState extends State<ProfileMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
              decoration: BoxDecoration(color: Colors.black
                  //gradient: LinearGradient(
                  //   begin: Alignment.topRight,
                  //   end: Alignment.bottomLeft,
                  //   colors: [
                  //     Colors.orange,
                  //     Colors.black,
                  //   ],
                  //
                  //)
                  ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //title
                    Padding(
                      padding: const EdgeInsets.only(left: 32, top: 20),
                      child: Text("Profile",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins')),
                    ),

                    //buttons
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 32,
                          right: 32,
                          top: 30,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text("Account details",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: 'Poppins')),
                        ),
                      ),
                      onTap: () {
                        // print('******');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccountDetails()));
                      },
                    ),
                    divider(),
                    InkWell(
                      child: Padding(
                          padding: const EdgeInsets.only(
                            left: 32,
                            right: 32,
                            top: 20,
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text("My music preferences",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: 'Poppins')),
                          )),
                      onTap: () {
                        print('******');
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => AccountDetails()));
                      },
                    ),
                    divider(),
                    InkWell(
                      child: Padding(
                          padding: const EdgeInsets.only(
                            left: 32,
                            right: 32,
                            top: 20,
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text("FAQ's",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: 'Poppins')),
                          )),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Faq()));
                      },
                    ),
                    divider(),
                    InkWell(
                      child: Padding(
                          padding: const EdgeInsets.only(
                            left: 32,
                            right: 32,
                            top: 20,
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text("Terms and conditions",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: 'Poppins')),
                          )),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Terms()));
                      },
                    ),
                    divider(),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 32,
                        right: 32,
                        top: 20,
                      ),
                      child: Text("Privacy policy",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'Poppins')),
                    ),
                    divider(),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 32,
                        right: 32,
                        top: 20,
                      ),
                      child: Text("About this app",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'Poppins')),
                    ),
                    divider(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 32, right: 32, top: 20, bottom: 50),
                      child: Text("Logout",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'Poppins')),
                    )
                  ],
                ),
              ])),
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
