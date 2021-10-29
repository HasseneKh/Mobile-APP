import 'package:flutter/material.dart';

import 'EmailUpdate.dart';
import 'ResetPassword.dart';

class AccountDetails extends StatefulWidget {
  AccountDetails({Key? key}) : super(key: key);

  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.orange,
              Colors.black,
            ],
          )),
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
                            padding: const EdgeInsets.only(left: 10, right: 15),
                            child: Icon(
                              Icons.arrow_back_rounded,
                              size: 28,
                              color: Colors.white,
                            )),
                      ),
                      Text("Account details",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins')),
                    ],
                  )),
              //email
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Emails",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins')),
                        subtitle: Text("foulen@foulen.com",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Poppins')),
                        trailing: InkWell(
                          child: Text("Edit",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Poppins')),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EmailUpdate()));
                          },
                        ),
                      ),
                      divider(),
                      //Password
                      ListTile(
                        title: Text("Password",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins')),
                        subtitle: Text(". . . . . . . . . . ",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Poppins')),
                        trailing: InkWell(
                          child: Text("Rest Password",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Poppins')),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RestPassword()));
                          },
                        ),
                      ),
                      divider(),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget divider() {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: new Divider(
        height: 0.1,
        color: Colors.grey,
      ),
    );
  }
}
