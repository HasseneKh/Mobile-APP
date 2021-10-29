import 'package:flutter/material.dart';
import 'package:music_app/const.dart';

class ProfileMain extends StatefulWidget {
  ProfileMain({Key? key}) : super(key: key);

  @override
  _ProfileMainState createState() => _ProfileMainState();
}

class _ProfileMainState extends State<ProfileMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.orange,
                    Colors.black,
                  ],
                )),
              ),

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
              Padding(
                padding: const EdgeInsets.only(
                  left: 32,
                  right: 32,
                  top: 30,
                ),
                child: Text("Account details",
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
                child: Text("My music preferences",
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
                child: Text("FAQ's",
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
                child: Text("Terms and conditions",
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
