import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color> [
              Colors.black,
              Colors.blue.shade900,
              Colors.blue.shade700,
              Colors.blue.shade500,
              Colors.blue.shade300
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(30,50,0,0),
                    child: Text('Welcome!',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 55)
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(40,130,0,0),
                    child: RaisedButton(
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      onPressed: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => Signin())
                        );
                      },
                      color: Colors.white,
                      elevation: 15,
                      highlightElevation: 5,
                      splashColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      child: Text('Sign in',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade800, fontSize: 25)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20,bottom: 20),
              child: Image.asset('images/image.png', width: MediaQuery.of(context).copyWith().size.width),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account? ',
                    style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 18)
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => Signup())
                    );
                  },
                  child: Text('Sign up',
                      style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 20)
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {

  bool _obscure = true;
  void _show(){
    setState(() {
      _obscure =! _obscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color> [
                  Colors.black,
                  Colors.blue.shade900,
                  Colors.blue.shade700,
                  Colors.blue.shade500,
                  Colors.blue.shade300
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              padding: EdgeInsets.fromLTRB(20, 50, 0, 10),
              icon: Icon(Icons.arrow_back_ios_sharp,size: 30,color: Colors.white),
              onPressed: (){
                Navigator.pop(
                    context, MaterialPageRoute(
                    builder: (context) => Home())
                );
              },
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30,30,0,0),
              child: Text('Welcome',
                  style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white, fontSize: 40)
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30,0,0,0),
              child: Text('Back',
                  style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white, fontSize: 40)
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30,50,30,20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        prefixIcon: Icon(Icons.email,size: 30),
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300)
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30,10,30,0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        prefixIcon: Icon(Icons.lock,size: 30,),
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
                        suffixIcon: IconButton(
                          icon: Icon(_obscure? Icons.visibility : Icons.visibility_off,),
                          onPressed: _show,
                        )
                    ),
                    obscureText: _obscure,
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.fromLTRB(0,15,30,40),
              child: InkWell(
                onTap: (){},
                child: Text('Forgot password?',
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15)
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: RaisedButton(
                padding: EdgeInsets.fromLTRB(50,5,50,5),
                onPressed: (){},
                child: Text('Sign in',
                    style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.w500)
                ),
                color: Colors.white,
                elevation: 15,
                highlightElevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Don\'t have an account? ',
                    style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 18)
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => Signup())
                    );
                  },
                  child: Text('Sign up',
                      style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 20)
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  bool _obscure = true;
  void _show(){
    setState(() {
      _obscure =! _obscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color> [
                    Colors.black,
                    Colors.blue.shade900,
                    Colors.blue.shade700,
                    Colors.blue.shade500,
                    Colors.blue.shade300
                  ]
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                padding: EdgeInsets.fromLTRB(20, 50, 0, 10),
                icon: Icon(Icons.arrow_back_ios_sharp,size: 30,color: Colors.white),
                onPressed: (){
                  Navigator.pop(
                      context, MaterialPageRoute(
                      builder: (context) => Home())
                  );
                },
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30,30,0,0),
                child: Text('Create',
                    style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white, fontSize: 40)
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30,0,0,0),
                child: Text('Account',
                    style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white, fontSize: 40)
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(30,50,30,20),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide()),
                          prefixIcon: Icon(Icons.person_sharp,size: 30),
                          labelText: 'Name',
                          labelStyle: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300)
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30,10,30,20),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide()),
                          prefixIcon: Icon(Icons.email,size: 30),
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300)
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30,10,30,40),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide()),
                          prefixIcon: Icon(Icons.lock,size: 30,),
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
                          suffixIcon: IconButton(
                            icon: Icon(_obscure? Icons.visibility : Icons.visibility_off,),
                            onPressed: _show,
                          )
                      ),
                      obscureText: _obscure,
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                child: RaisedButton(
                  padding: EdgeInsets.fromLTRB(50,5,50,5),
                  onPressed: (){},
                  child: Text('Sign up',
                      style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.w500)
                  ),
                  color: Colors.white,
                  elevation: 15,
                  highlightElevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Already have an account? ',
                      style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 18)
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => Signin())
                      );
                    },
                    child: Text('Sign in',
                        style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 20)
                    ),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}