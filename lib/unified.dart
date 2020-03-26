import 'dart:ui';

import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return new Scaffold(
        body: ListView(
          children: <Widget>[
            Stack(
                children: <Widget>[
                  Container(
                    height: 533,
                    width: 320,
                    decoration: BoxDecoration(
                      image:  DecorationImage(
                        image:  AssetImage("image/theam.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withOpacity(0),
              ),
                  ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:100.0,left:10,),
                    child: Container(

                      height: 330,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        ),
                      child: Form(
                        key: this._formKey,
                        child: new ListView(

                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: new TextFormField(
                                keyboardType: TextInputType.emailAddress, // Use email input type for emails.
                                decoration: new InputDecoration(
                                  prefixIcon: Icon(Icons.person,),
                                  hintText: 'user name',hintStyle: TextStyle(fontWeight: FontWeight.w300,fontSize:10),
                                  //  labelText: 'E-mail Address'
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: new TextFormField(
                                // obscureText: true, // Use secure text for passwords.
                                decoration: new InputDecoration(
                                  prefixIcon: Icon(Icons.email,),
                                  hintText: 'Your email',hintStyle: TextStyle(fontWeight: FontWeight.w300,fontSize:10),
                                  //   labelText: 'Enter your password'
                                ),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Flexible(
                                  child:
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                    child: new TextFormField(
                                      keyboardType: TextInputType.emailAddress, // Use email input type for emails.
                                      decoration: new InputDecoration(
                                        prefixIcon: Icon(Icons.vpn_key),
                                        hintText: 'Password',hintStyle: TextStyle(fontWeight: FontWeight.w300,fontSize:10),
                                        //  labelText: 'E-mail Address'
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Flexible(

                                  child:  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: new TextFormField(
                                      // obscureText: true, // Use secure text for passwords.
                                        decoration: new InputDecoration(
                                          // border: InputBorder.none,
                                          prefixIcon: Icon(Icons.vpn_key),
                                          hintText: 'Confirm Password',hintStyle: TextStyle(fontWeight: FontWeight.w300,fontSize:10),
                                          //   labelText: 'Enter your password'
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),


                            Padding(
                              padding: const EdgeInsets.only(top: 20,right: 10,left: 10),
                              child: new Container(
                                width: screenSize.width,
                                child: new RaisedButton(
                                  child: new Text(
                                    'CREATE A FREE ACCOUNT',
                                    style: new TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                  onPressed: () => null,
                                  color: Colors.grey,
                                ),

                              ),
                            ),

                           Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                color: Colors.black26,
                                width: 130,
                                height: 1,
                              ),

                          Container(
                            width: 20,
                            height: 20,
                            decoration: new BoxDecoration(
                              // Circle shape
                                shape: BoxShape.circle,
                                color: Colors.white,
                                // The border you want
                                border:Border.all(color: Colors.black26,width:1),
                            ),
                           child: Center(
                             child: Text("or",style:TextStyle(
                               color: Colors.black26,
                             ),),
                           ),
                           // child: contentInCircle,
                          ),

                              Container(
                                color: Colors.black26,
                                width: 130,
                                height: 1,
                              ),
                          ],
                        ),
                      ),
                    ),

                            Padding(
                              padding: const EdgeInsets.only(right: 10,left: 10),
                              child: new Container(
                                width: screenSize.width,
                                child: new RaisedButton(
                                  child: new Text(
                                    'SIGN IN WITH DROPBOX',
                                    style: new TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                  onPressed: () => null,
                                  color: Colors.indigo,
                                ),

                              ),
                            ),
                      ],
                  ),
                      ),
                    ),
                  ),
                ]     
            ),
          ],
        )
    );
  }
}

